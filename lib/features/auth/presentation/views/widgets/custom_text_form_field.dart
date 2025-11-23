import 'package:flutter/material.dart';
import 'package:genware/features/auth/presentation/views/widgets/password_icon_visability.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    required this.icon,
    required this.text,
    required this.textcolor,
    required this.iconcolor,
    this.isPassword = false,
  });
  final IconData icon;
  final String text;
  final Color textcolor;
  final Color iconcolor;
  final bool isPassword;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Feild is requird';
        } else {
          return null;
        }
      },
      obscureText: isPasswordVisible && widget.isPassword,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          vertical: 25,
          // horizontal: 20,
        ),
        prefixIcon: Icon(widget.icon, color: widget.iconcolor),
        prefixIconColor: Colors.black,
        suffixIcon: widget.isPassword
            ? PasswordIconVisibility(
                iconcolor: widget.iconcolor,
                isVisible: isPasswordVisible,
                onTap: () {
                  setState(() {
                    isPasswordVisible = !isPasswordVisible;
                  });
                },
              )
            : null,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        labelText: widget.text,
        labelStyle: TextStyle(color: widget.textcolor),
      ),
    );
  }
}
