import 'package:barbershop_app/app/presentation/home/home_view.dart';
import 'package:barbershop_app/app/presentation/main/main_view.dart';
import 'package:flutter/material.dart';

class BarbershopApp extends StatelessWidget {
  const BarbershopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainView(),
    );
  }
}
