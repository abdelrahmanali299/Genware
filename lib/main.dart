import 'package:flutter/material.dart';
import 'package:genware/core/utils/app_routers.dart';

void main() {
  runApp(GenWare());
}

class GenWare extends StatelessWidget {
  const GenWare({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouters.router,
      debugShowCheckedModeBanner: false,
      );
  }
}