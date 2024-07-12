// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pulse/patientinfo/indCRUD.dart';
import 'package:pulse/patientinfo/indMewsDetail.dart';
import 'package:pulse/patientinfo/mewsFullReport.dart';
import 'package:pulse/patientinfo/patientListPage.dart';
import 'package:pulse/screens/home.dart';
import 'package:pulse/screens/setting.dart';

class MainInfo extends StatefulWidget {
  const MainInfo({super.key});

  @override
  State<MainInfo> createState() => _MainInfoState();
}

class _MainInfoState extends State<MainInfo> {
  bool _isFirstVisible = false;
  bool _isSecondVisible = false;
  bool _isThirdVisible = false;
  bool _isForthVisible = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    const String name = '森下';
    final String firstLetter = name.isNotEmpty ? name[0].toUpperCase() : '';

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(size.width * 0.03),
          child: Column(
            children: [
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
                              color: const Color(0xffBA90CB),
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
              SizedBox(height: size.height * 0.027),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Patientlistpage()),
                  );
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                  child: Row(
                    children: [
                      FaIcon(FontAwesomeIcons.backward,
                          size: size.width * 0.05),
                      SizedBox(width: size.width * 0.02),
                      Text(
                        "ย้อนกลับ",
                        style: GoogleFonts.inter(
                            fontSize: size.width * 0.05,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _isFirstVisible = !_isFirstVisible;
                  });
                },
                child: Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: size.width * 0.015,
                      vertical: size.width * 0.01),
                  padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.03,
                      vertical: size.width * 0.01),
                  decoration: BoxDecoration(
                      color: Color(0xffFFDDEC),
                      borderRadius: BorderRadius.circular(size.width * 0.03)),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "ข้อมูลคนไข้",
                            style: GoogleFonts.inter(
                                fontSize: size.width * 0.05,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(width: 5),
                          _isFirstVisible
                              ? FaIcon(FontAwesomeIcons.caretDown,
                                  size: size.width * 0.07)
                              : FaIcon(FontAwesomeIcons.caretRight,
                                  size: size.width * 0.07)
                        ],
                      ),
                      Visibility(
                        visible: _isFirstVisible,
                        child: Column(
                          children: [
                            SizedBox(height: size.height * 0.02),
                            PatientMewsDetail()
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _isSecondVisible = !_isSecondVisible;
                  });
                },
                child: Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: size.width * 0.015,
                      vertical: size.width * 0.01),
                  padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.03,
                      vertical: size.width * 0.01),
                  decoration: BoxDecoration(
                      color: Color(0xffFFDDEC),
                      borderRadius: BorderRadius.circular(size.width * 0.03)),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "ข้อมูลส่วนตัว",
                            style: GoogleFonts.inter(
                                fontSize: size.width * 0.05,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(width: 5),
                          _isSecondVisible
                              ? FaIcon(FontAwesomeIcons.caretDown,
                                  size: size.width * 0.07)
                              : FaIcon(FontAwesomeIcons.caretRight,
                                  size: size.width * 0.07)
                        ],
                      ),
                      Visibility(
                        visible: _isSecondVisible,
                        child: Column(
                          children: const [
                            indPatientInfo()
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _isThirdVisible = !_isThirdVisible;
                  });
                },
                child: Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: size.width * 0.015,
                      vertical: size.width * 0.01),
                  padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.03,
                      vertical: size.width * 0.01),
                  decoration: BoxDecoration(
                      color: Color(0xffFFDDEC),
                      borderRadius: BorderRadius.circular(size.width * 0.03)),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "ประวัติการเข้ารับการรักษา",
                            style: GoogleFonts.inter(
                                fontSize: size.width * 0.05,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(width: 5),
                          _isThirdVisible
                              ? FaIcon(FontAwesomeIcons.caretDown,
                                  size: size.width * 0.07)
                              : FaIcon(FontAwesomeIcons.caretRight,
                                  size: size.width * 0.07)
                        ],
                      ),
                      Visibility(
                        visible: _isThirdVisible,
                        child: Column(
                          children: [
                            SizedBox(height: size.height * 0.02),
                            PatientTimeline()
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _isForthVisible = !_isForthVisible;
                  });
                },
                child: Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: size.width * 0.015,
                      vertical: size.width * 0.01),
                  padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.03,
                      vertical: size.width * 0.01),
                  decoration: BoxDecoration(
                      color: Color(0xffFFDDEC),
                      borderRadius: BorderRadius.circular(size.width * 0.03)),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "รายงานฉบับเต็ม",
                            style: GoogleFonts.inter(
                                fontSize: size.width * 0.05,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(width: 5),
                          _isForthVisible
                              ? FaIcon(FontAwesomeIcons.caretDown,
                                  size: size.width * 0.07)
                              : FaIcon(FontAwesomeIcons.caretRight,
                                  size: size.width * 0.07)
                        ],
                      ),
                      Visibility(
                        visible: _isForthVisible,
                        child: Column(
                          children: [
                            SizedBox(height: size.height * 0.02),
                            FullReport(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
