import 'package:calculator/src/utils/enum/button_type_enum.dart';
import 'package:flutter/material.dart';

extension EButtonTypeEnum on ButtonTypeEnum {
   Color getButtonColor(ButtonTypeEnum type) {
    switch (type) {
      case ButtonTypeEnum.Number:
        return Colors.grey[300]!;
      case ButtonTypeEnum.Operator:
        return Colors.orange;
      case ButtonTypeEnum.Action:
        return Colors.grey[300]!;
    }
  }

  Color getTextColor(ButtonTypeEnum type) {
    switch (type) {
      case ButtonTypeEnum.Number:
        return Colors.black;
      case ButtonTypeEnum.Operator:
      case ButtonTypeEnum.Action:
        return Colors.white;
    }
  }

  Color getIconColor(ButtonTypeEnum type) {
    switch (type) {
      case ButtonTypeEnum.Number:
        return Colors.black;
      case ButtonTypeEnum.Operator:
      case ButtonTypeEnum.Action:
        return Colors.white;
    }
  }
}