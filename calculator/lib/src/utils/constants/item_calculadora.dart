    
import 'package:calculator/src/data/model/button_model.dart';
import 'package:calculator/src/utils/enum/button_type_enum.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ItemCalculadora {
  static final List<List<CalculatorButtonModel>> buttonRows = [
    [
      CalculatorButtonModel(text: 'AC', type: ButtonTypeEnum.Action),
      CalculatorButtonModel(icon: FontAwesomeIcons.deleteLeft, type: ButtonTypeEnum.Action),
      CalculatorButtonModel(icon: FontAwesomeIcons.percent, type: ButtonTypeEnum.Operator),
      CalculatorButtonModel(icon: FontAwesomeIcons.divide, type: ButtonTypeEnum.Operator),
    ],
    [
      CalculatorButtonModel(text: '7', type: ButtonTypeEnum.Number),
      CalculatorButtonModel(text: '8', type: ButtonTypeEnum.Number),
      CalculatorButtonModel(text: '9', type: ButtonTypeEnum.Number),
      CalculatorButtonModel(type: ButtonTypeEnum.Operator, icon: FontAwesomeIcons.xmark),
    ],
    [
      CalculatorButtonModel(text: '4', type: ButtonTypeEnum.Number),
      CalculatorButtonModel(text: '5', type: ButtonTypeEnum.Number),
      CalculatorButtonModel(text: '6', type: ButtonTypeEnum.Number),
      CalculatorButtonModel(icon: FontAwesomeIcons.minus, type: ButtonTypeEnum.Operator),
    ],
    [
      CalculatorButtonModel(text: '1', type: ButtonTypeEnum.Number),
      CalculatorButtonModel(text: '2', type: ButtonTypeEnum.Number),
      CalculatorButtonModel(text: '3', type: ButtonTypeEnum.Number),
      CalculatorButtonModel(icon: FontAwesomeIcons.plus, type: ButtonTypeEnum.Operator),
    ],
    [
      CalculatorButtonModel(text: '', type: ButtonTypeEnum.Number),
      CalculatorButtonModel(text: '0', type: ButtonTypeEnum.Number),
      CalculatorButtonModel(text: '.', type: ButtonTypeEnum.Number),
      CalculatorButtonModel(icon: FontAwesomeIcons.equals, type: ButtonTypeEnum.Operator),
    ],
  ];

  static List<String> operador = [
    "+", "-", "x", "/"
  ];
}
