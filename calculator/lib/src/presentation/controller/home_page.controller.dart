import 'package:calculator/src/data/model/button.model.dart';
import 'package:flutter/material.dart';

class HomePageController {
  
  // Cria Instância única da classe

  static HomePageController? _instance;

  HomePageController._();

  static HomePageController get instance {
    return _instance ??= HomePageController._();
  }

  final displayValue = ValueNotifier<String>('0');

  void onButtonPressed(CalculatorButtonModel button) {
    if(button.text != null) {
      displayValue.value += button.text!;
    }
  }
}