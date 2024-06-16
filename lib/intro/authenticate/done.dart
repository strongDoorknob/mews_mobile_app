import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pulse/themes/color.dart';
import 'package:pulse/screens/home.dart';

class DonePage extends StatefulWidget {
  const DonePage({super.key});

  @override
  State<DonePage> createState() => _DonePageState();
}

class _DonePageState extends State<DonePage> {

  String text = "<user>";

  @override
  void initState() {
    super.initState();
    // Delay for 3 seconds and then navigate to HomeScreen
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: size.width * 0.4, // Adjust size as needed
              width: size.width * 0.4, // Adjust size as needed
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white60,
                  width: 2,
                ),
              ),
              child: Icon(
                FontAwesomeIcons.userCircle,
                size: size.width * 0.4, // Adjust size as needed
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "ยินดีต้อนรับ",
              style: GoogleFonts.inter(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Text(
              text,
              style: GoogleFonts.inter(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
