// ignore_for_file: deprecated_member_use, prefer_const_constructors, prefer_const_declarations

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pulse/analysis/mews.dart';
import 'package:pulse/patientinfo/patientGeneralInfoListPage.dart';
import 'package:pulse/screens/home.dart';
import 'package:pulse/screens/setting.dart';

class AllFeaturesPage extends StatelessWidget {
  const AllFeaturesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final String name =
        'ณัฐปภัสร์'; 
    final String firstLetter = name.isNotEmpty ? name[0].toUpperCase() : '';


    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(size.width * 0.04),
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

              SizedBox(height: size.height * 0.02),
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
                        MaterialPageRoute(
                            builder: (context) => const MewsScreen()),
                      );
                    },
                    child: const FeatureCard(
                      title: 'MEWS',
                      subtitle: 'ระบบคะเเนนเเจ้ง\nสัญญาณภัยล่วงหน้า',
                      icon: FontAwesomeIcons.exclamationTriangle,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PatientCRUDPage()),
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
              SizedBox(height: size.height * 0.1),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FaIcon(FontAwesomeIcons.solidSmileWink,
                    color: Color(0xffFFCD50),
                        size: size.width * 0.2),
                    SizedBox(height: size.height * 0.02),
                    Text(
                      'ไม่มีอะไรเพิ่มแล้ววว\nเราจะแจ้งให้คุณทราบเร็วๆนี้ถ้ามีการอัพเดท',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: size.width * 0.04),
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
        color: Color.fromARGB(255, 182, 135, 201),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FaIcon(icon, size: 40, color: Color.fromARGB(255, 237, 173, 200)),
          const SizedBox(height: 8.0),
          Text(
            title,
            style: GoogleFonts.inter(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),
          ),
          const SizedBox(height: 4.0),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(fontSize: 12, color: const Color.fromARGB(255, 234, 234, 234)),
          ),
        ],
      ),
    );
  }
}
