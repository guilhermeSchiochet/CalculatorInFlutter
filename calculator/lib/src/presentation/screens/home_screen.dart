import 'package:calculator/src/data/model/button.model.dart';
import 'package:calculator/src/data/repository/calculator.repository.dart';
import 'package:calculator/src/presentation/widgets/calculator_button.widget.dart';
import 'package:calculator/src/utils/constants/item_calculadora.dart';
import 'package:calculator/src/utils/extensions/button_type.extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late CalculatorRepository _calculatorRepository;
  final  _displayValue = ValueNotifier<String>('0');

  @override
  void initState() {
    _calculatorRepository = CalculatorRepository();
    super.initState();
  }

  void _onButtonPressed(CalculatorButtonModel button) {
    if(button.text != null) {
      _displayValue.value += button.text!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.all(22.0),
              alignment: Alignment.bottomRight,
              child: ValueListenableBuilder<String>(
                valueListenable: _displayValue,
                builder: (context, value, child) => Text(
                  value,
                  style: const TextStyle(
                    fontSize: 48.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          _buildButtonGrid(),
        ],
      ),
    );
  }

  Widget _buildButtonGrid() {
    return Expanded(
      flex: 3,
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.all(20.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 17.0,
          mainAxisSpacing: 17.0,
        ),
        itemCount: ItemCalculadora.buttonRows.length * 4,
        itemBuilder: (BuildContext context, int index) {
          int row = index ~/ 4;
          int col = index % 4;

          return CalculatorButtonWidget(
            button: ItemCalculadora.buttonRows[row][col],
            onPressed: () => _onButtonPressed(ItemCalculadora.buttonRows[row][col]),
          );
        },
      ),
    );
  }
}
