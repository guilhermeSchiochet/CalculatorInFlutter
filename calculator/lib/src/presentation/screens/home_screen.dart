import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
            child: Container(
              padding: EdgeInsets.all(20.0),
              alignment: Alignment.centerRight,
              child: Text(
                "0",
                style: TextStyle(
                  fontSize: 48.0,
                  fontWeight: FontWeight.bold,
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
    List<List<String>> buttonRows = [
      ["7", "8", "9", "/"],
      ["4", "5", "6", "x"],
      ["1", "2", "3", "-"],
      ["C", "0", "=", "+"],
    ];

    return Expanded(
      child: GridView.builder(
        padding: EdgeInsets.all(20.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemCount: buttonRows.length * 4,
        itemBuilder: (BuildContext context, int index) {
          int row = index ~/ 4;
          int col = index % 4;
          String buttonText = buttonRows[row][col];
          return CalculatorButton(
            text: buttonText,
            onPressed: () => _onButtonPressed(buttonText),
          );
        },
      ),
    );
  }

  void _onButtonPressed(String buttonText) {
    // Implementar a lógica para processar o pressionamento do botão aqui
    print("Botão pressionado: $buttonText");
  }
}

class CalculatorButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CalculatorButton({
    required this.text,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(10.0),
      child: Ink(
        decoration: BoxDecoration(
          color: _isOperator(text) ? Colors.orange : Colors.grey[300],
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: MediaQuery.of(context).textScaler.scale(24.0),
              fontWeight: FontWeight.bold,
              color: _isOperator(text) ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }

  bool _isOperator(String text) {
    return ["+", "-", "x", "/"].contains(text);
  }
}
