// ignore_for_file: prefer_const_constructors, deprecated_member_use, duplicate_ignore

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pulse/analysis/addPatient.dart';
import 'package:pulse/screens/home.dart';
import 'package:pulse/screens/setting.dart';

class MewsScreen extends StatelessWidget {
  const MewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // ignore: prefer_const_declarations
    final String name =
        '森下'; 
    final String firstLetter = name.isNotEmpty ? name[0].toUpperCase() : '';

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(size.width * 0.03),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header section
              Padding(
                padding: EdgeInsets.only(
                    top: size.height * 0.07, bottom: size.height * 0.02),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                          },
                          child: Container(
                            width: size.width * 0.13,
                            height: size.width * 0.13,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xffBA90CB), // Adjust the color as needed
                            ),
                            child: Center(
                              child: Text(
                                firstLetter,
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                    fontSize: size.width * 0.05,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: size.width * 0.03),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'ยินดีต้อนรับ,\n',
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                    fontSize: size.width * 0.06,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              TextSpan(
                                text: '$name!!',
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                    fontSize: size.width * 0.05,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    IconButton(
                      icon: FaIcon(FontAwesomeIcons.cog),
                      iconSize: size.width * 0.08,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SettingsPage()),
                        );
                      },
                    ),
                  ],
                ),
              ),

              // Main content
              SizedBox(height: size.height * 0.012),
              Text(
                'ระบบคะแนนแจ้งเตือนสัญญาณ\nภาวะวิกฤติ',
                style: GoogleFonts.inter(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 150.0),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AddPatientPage()),
                        );
                      },
                      // ignore: deprecated_member_use
                      child: const Icon(Icons.add_circle, size: 70,)
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'ยังไม่มีใครอยู่ที่นี่เลย',
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'กดเพื่อเพิ่มข้อมูลคนไข้ลงในระบบ',
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                          fontSize: 17,
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),
                    Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Text.rich(
                        TextSpan(
                          text: 'หรือ ',
                          style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                              fontSize: 17,
                            ),
                          ),
                          children: [
                            TextSpan(
                              text: 'นำเข้า',
                              style: GoogleFonts.inter(
                                textStyle: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffFF0000),
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  // redirect page
                                },
                            ),
                            TextSpan(
                              text: '\nข้อมูลจากฐานข้อมูล',
                              style: GoogleFonts.inter(
                                textStyle: const TextStyle(
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
