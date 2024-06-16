// ignore: file_names
// ignore_for_file: deprecated_member_use, prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pulse/analysis/addPatient.dart';
import 'package:pulse/analysis/mews.dart';
import 'package:pulse/screens/home.dart';
import 'package:pulse/screens/setting.dart';

class AllFeaturesPage extends StatelessWidget {
  const AllFeaturesPage({super.key});

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
          padding: EdgeInsets.fromLTRB(size.width * 0.04, size.height * 0.07, size.width * 0.04, 0),
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
                    MaterialPageRoute(builder: (context) => const SettingsPage()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 20),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'ฟีเจอร์ทั้งหมด',
              style: GoogleFonts.inter(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            Text(
              'ฟีเจอร์ที่ใช้งานได้',
              style: GoogleFonts.inter(fontSize: 17),
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MewsScreen()),
                    );
                  },
                  child: const FeatureCard(
                    title: 'MEWS',
                    subtitle: 'ระบบคะเเนนเเจ้ง\nสัญญาณภัยล่วงหน้า',
                    // ignore: deprecated_member_use
                    icon: FontAwesomeIcons.exclamationTriangle,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AddPatientPage()),
                    );
                  },
                  child: const FeatureCard(
                    title: 'Patient',
                    subtitle: 'ฐานข้อมูลคนไข้',
                    icon: FontAwesomeIcons.user,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32.0),
            Text(
              'ฟีเจอร์ที่กำลังจะมา',
              style: GoogleFonts.inter(fontSize: 17),
            ),
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FaIcon(FontAwesomeIcons.solidSmileWink, size: size.width * 0.2),
                    SizedBox(height: size.height * 0.02),
                    Text(
                      'ไม่มีอะไรเพิ่มแล้ววว\nเราจะแจ้งให้คุณทราบเร็วๆนี้ถ้ามีการอัพเดท',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: size.width * 0.04),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FeatureCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;

  const FeatureCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FaIcon(icon, size: 40, color: Colors.grey[700]),
          const SizedBox(height: 8.0),
          Text(
            title,
            style: GoogleFonts.inter(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4.0),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(fontSize: 12, color: Colors.grey[600]),
          ),
        ],
      ),
    );
  }
}
