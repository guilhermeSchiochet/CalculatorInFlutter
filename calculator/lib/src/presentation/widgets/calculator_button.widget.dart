import 'package:calculator/src/data/model/button.model.dart';
import 'package:calculator/src/utils/extensions/button_type.extension.dart';
import 'package:flutter/material.dart';

class CalculatorButtonWidget extends StatelessWidget {
  final CalculatorButtonModel button;
  final VoidCallback onPressed;

  const CalculatorButtonWidget({
    required this.button,
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
          color: button.type.getButtonColor(),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Center(
          child: getWidget(context),
        ),
      ),
    );
  }

  Widget getWidget(BuildContext context) {
    if (button.text != null) {
      return Text(
        button.text!,
        style: TextStyle(
          fontSize: MediaQuery.of(context).textScaleFactor * 24.0,
          fontWeight: FontWeight.bold,
          color: button.type.getTextColor(),
        ),
      );
    } else if (button.icon != null) {
      return Icon(
        button.icon,
        color: button.type.getIconColor(),
        size: MediaQuery.of(context).textScaleFactor * 24.0,
      );
    }
    return const SizedBox.shrink();
  }
}
