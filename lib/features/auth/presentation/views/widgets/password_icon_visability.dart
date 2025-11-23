import 'package:flutter/material.dart';

class PasswordIconVisibility extends StatelessWidget {
  const PasswordIconVisibility({
    super.key,
    required this.iconcolor,
    required this.isVisible,
    required this.onTap,
  });

  final Color iconcolor;
  final bool isVisible;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: IconButton(
        icon: Icon(
          isVisible ? Icons.visibility_off : Icons.visibility,
          color: iconcolor,
        ),
        onPressed: onTap,
      ),
    );
  }
}
