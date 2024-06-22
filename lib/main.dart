import 'package:flutter/material.dart';
import 'package:pulse/nursing/HighResult.dart';
import 'package:pulse/nursing/MedResult.dart';
import 'package:pulse/nursing/lowMedResult.dart';
import 'package:pulse/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: {
            TargetPlatform.android: CupertinoPageTransitionsBuilder(),
            TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          },
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const HighResultPage(),
    );
  }
}


