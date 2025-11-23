import 'package:flutter/material.dart';
import 'package:genware/features/auth/presentation/views/login_view.dart';

void main() {
  runApp(GenWare());
}

class GenWare extends StatelessWidget {
  const GenWare({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginView(),);
  }
}