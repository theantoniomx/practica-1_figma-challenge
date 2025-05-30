import 'package:flutter/material.dart';
import 'package:pmsn2025/screens/login_screen.dart';
import 'package:pmsn2025/screens/main_figma.dart';
import 'package:pmsn2025/screens/dashboard_screen.dart';
import 'package:pmsn2025/screens/list_students_screen.dart';
import 'package:pmsn2025/screens/splash_screen.dart';
import 'package:pmsn2025/screens/todo_screen.dart';
import 'package:pmsn2025/utils/global_values.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: GlobalValues.themeApp,
      builder: (context, value, child) {
        return MaterialApp(
          theme: value,
          routes: {
            "/list": (context) => const ListStudentsScreen(),
            "/dash": (context) => const DashboardScreen(),
            "/todo": (context) => const TodoScreen(),
            "/figma": (context) => const HomeScreen(),
            "/login": (context) => const LoginScreen()
          },
          title: 'Practica 1 - Figma Challenge',
          debugShowCheckedModeBanner: false,
          home: const SplashScreen(),
        );
      },
    );
  }
}
