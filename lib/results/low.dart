// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pulse/nursing/lowResult.dart';
import 'package:pulse/screens/home.dart';
import 'package:pulse/screens/setting.dart';

class LowPage extends StatelessWidget {
  const LowPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    const String name = '하준';
    final String firstLetter = name.isNotEmpty ? name[0].toUpperCase() : '';

    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: size.height * 0.07,
                bottom: size.height * 0.02,
              ),
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
                              builder: (context) => HomePage(),
                            ),
                          );
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
                          builder: (context) => SettingsPage(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: size.height * 0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  '*คะแนนจะถูกเพิ่มลง\nในฐานข้อมูลโดยอัตโนมัติ',
                  textAlign: TextAlign.right,
                  style: GoogleFonts.inter(
                    textStyle: TextStyle(
                      fontSize: size.width * 0.033,
                      color: Colors.black54,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: size.height * 0.008),
            Container(
              height: size.height * 0.7,
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Color(0xffFFDDEC),
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Column(
                children: [
                  Text(
                    'คะแนนโดย\nรวม',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontSize: size.width * 0.08,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.01),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      AnimatedContainer(
                        duration: Duration(seconds: 2),
                        width: size.width * 0.25,
                        height: size.width * 0.25,
                        child: FaIcon(
                          FontAwesomeIcons.cloudSun,
                          size: size.width * 0.25,
                        ),
                      ),
                      Text(
                        '0', // This should be changeable based on the calculation.
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            fontSize: size.width * 0.2,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      AnimatedContainer(
                        duration: Duration(seconds: 2),
                        width: size.width * 0.25,
                        height: size.width * 0.25,
                        child: FaIcon(
                          FontAwesomeIcons.cloud,
                          size: size.width * 0.25,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.015),
                  FaIcon(
                    FontAwesomeIcons.solidSmileBeam,
                    color: Color.fromARGB(255, 153, 227, 55),
                    size: size.width * 0.26,
                  ),
                  SizedBox(height: size.height * 0.02),
                  Text(
                    'ความเสี่ยงต่ำ',
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontSize: size.width * 0.08,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  Center(
                    child: Column(
                      children: [
                        Text(
                          'การพยาบาล:',
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                              fontSize: size.width * 0.05,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        SizedBox(height: size.height * 0.01),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LowResultPage(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xffe8a0bf),
                            textStyle: TextStyle(color: Colors.black),
                          ),
                          child: Text(
                            'กดดูที่นี่',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: size.height * 0.025),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'สามารถกดดูหรือ\nอัพเดทคะแนนคนไข้\nได้ ',
                                  style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                      fontSize: size.width * 0.032,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                                TextSpan(
                                  text: 'ที่นี่',
                                  style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                      color: Colors.red,
                                      fontSize: size.width * 0.032,
                                      fontWeight: FontWeight.normal,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      // Navigate to another page
                                    },
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffFFDEAC),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePage(),
                            ),
                          );
                        },
                        child: Text(
                          'กลับไปที่หน้าหลัก',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
