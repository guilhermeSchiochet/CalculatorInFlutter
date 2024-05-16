import 'package:calculator/src/data/model/button.model.dart';

class CalculatorRepository {
  String _displayValue = '0';

  String handleButtonPress(CalculatorButtonModel button) {
    
    return button.text ?? _displayValue;
  }

  void _calculateResult() { }
}
