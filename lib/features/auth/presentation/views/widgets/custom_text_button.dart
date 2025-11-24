import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    this.onPressed,
    required this.text,
    required this.textColor,  this.isUnderlined=false,
  });
  final void Function()? onPressed;
  final String text;
  final Color textColor;
  final bool isUnderlined;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(padding: EdgeInsets.zero),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          decoration: isUnderlined ? TextDecoration.underline : null,
          decorationColor: Colors.red,
        ),
      ),
    );
  }
}
