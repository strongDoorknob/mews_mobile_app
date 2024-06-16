// ignore_for_file: deprecated_member_use, prefer_const_constructors, duplicate_ignore

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

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: size.height * 0.08,
        flexibleSpace: Padding(
          padding: EdgeInsets.fromLTRB(
              size.width * 0.04, size.height * 0.07, size.width * 0.04, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.solidCircleUser,
                      size: size.width * 0.1,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()),
                      );
                    },
                  ),
                  SizedBox(width: size.width * 0.02),
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
                          text: '<name>!!',
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
                        builder: (context) => const SettingsPage()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 10),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'ระบบคะแนนแจ้งเตือนสัญญาณ\nภาวะวิกฤติ', // Added title
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
                    child: const FaIcon(FontAwesomeIcons.circlePlus, size: 70),
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
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      // redirect page
                    },
                    child: Text(
                      'นำเข้า',
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
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
