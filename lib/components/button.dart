import "package:flutter/material.dart";
import "../globals/styles.dart";

class AppButton extends StatelessWidget {
  final Text text;
  final Color bgColor;
  final double hPadding;
  final double vPadding;
  final VoidCallback? onPress;


  const AppButton({
    super.key,
    required this.text,
    this.bgColor = const Color(0xff386641),
    this.hPadding = 14,
    this.vPadding = 14,
    this.onPress = _defaultAction
  });

  static void _defaultAction() {
    print('Default Action Triggered.');
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5)
            ),
            backgroundColor: bgColor,
            padding: EdgeInsets.symmetric(horizontal: hPadding, vertical: vPadding)
          ),
          onPressed: onPress,
          child: text
      ),
    );
  }
}

