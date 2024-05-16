
import 'package:calculator/src/utils/enum/button_type.enum.dart';
import 'package:flutter/material.dart';

class CalculatorButtonModel {
  final String? text;
  final IconData? icon;
  final ButtonTypeEnum type;

  CalculatorButtonModel({
    this.text,
    this.icon,
    required this.type,
  });
}