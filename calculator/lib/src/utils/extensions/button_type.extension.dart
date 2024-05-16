import 'package:calculator/src/utils/enum/button_type.enum.dart';
import 'package:flutter/material.dart';

extension EButtonTypeEnum on ButtonTypeEnum {
   Color getButtonColor() {
    switch (this) {
      case ButtonTypeEnum.Equals: 
        return Colors.orange;
      default:
        return Colors.grey.shade800;
    }    
  }

  Color getTextColor() {
    switch (this) {
      case ButtonTypeEnum.Number:
        return Colors.white;
      case ButtonTypeEnum.Operator:
      case ButtonTypeEnum.Action:
        return Colors.orange;
      case ButtonTypeEnum.Equals:
        return Colors.white;
    }
  }

  Color getIconColor() {
    switch (this) {
      case ButtonTypeEnum.Number:
        return Colors.black;
      case ButtonTypeEnum.Operator:
      case ButtonTypeEnum.Action:
        return Colors.orange;
      case ButtonTypeEnum.Equals:
        return Colors.white;
    }
  }
}