import 'package:calculator/src/presentation/controller/home_page.controller.dart';
import 'package:calculator/src/presentation/widgets/calculator_button.widget.dart';
import 'package:calculator/src/utils/constants/item_calculadora.dart';
import 'package:flutter/material.dart';


class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  static HomePageController controller = HomePageController.instance;
  
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
                valueListenable: controller.displayValue,
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
        physics: const NeverScrollableScrollPhysics(),
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
            onPressed: () => controller.onButtonPressed(ItemCalculadora.buttonRows[row][col]),
          );
        },
      ),
    );
  }
}