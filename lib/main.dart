import 'package:flutter/material.dart';

import 'homescreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Idho Varen',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Mukta-Malar',
        colorScheme: ColorScheme(
          brightness: Brightness.light,

          primary: const Color(0xFF3E0F8D),
          onPrimary: Colors.white,

          secondary: const Color(0xFFE4DA72),
          onSecondary: Colors.white,

          tertiary: const Color(0xFFE4DA72),
          onTertiary: Colors.black,

          surface: const Color(0xFFEEEEEE),
          onSurface: Colors.black,

          error: Colors.red,
          onError: Colors.white,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
