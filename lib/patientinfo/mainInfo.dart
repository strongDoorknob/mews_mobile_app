// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pulse/patientinfo/indCRUD.dart';
import 'package:pulse/patientinfo/indMewsDetail.dart';
import 'package:pulse/patientinfo/mewsFullReport.dart';
import 'package:pulse/patientinfo/patientGeneralInfoListPage.dart';
import 'package:pulse/screens/setting.dart';
import 'package:pulse/themes/color.dart';

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
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: primaryColor,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          // Updated Header
          Padding(
            padding: EdgeInsets.only(
                top: size.height * 0.07, bottom: size.height * 0.02),
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
                        Navigator.pop(context);
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
                      MaterialPageRoute(builder: (context) => SettingsPage()),
                    );
                  },
                ),
              ],
            ),
          ),

          const SizedBox(height: 30,),

          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PatientCRUDPage()),
              );
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      const FaIcon(FontAwesomeIcons.backward),
                      const SizedBox(width: 10,),
                      Text(
                        "ย้อนกลับ",
                        style: GoogleFonts.inter(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 10,),

          GestureDetector(
            onTap: () {
              setState(() {
                _isFirstVisible = !_isFirstVisible;
              });
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 3),
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "ข้อมูลคนไข้",
                        style: GoogleFonts.inter(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(width: 5,),
                      _isFirstVisible
                          ? const FaIcon(FontAwesomeIcons.caretDown, size: 30,)
                          : const FaIcon(FontAwesomeIcons.caretRight, size: 30,)
                    ],
                  ),

                  Visibility(
                    visible: _isFirstVisible,
                    child: const Column(
                      children: [
                        SizedBox(height: 10,),
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
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 3),
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "ข้อมูลส่วนตัว",
                        style: GoogleFonts.inter(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(width: 5,),
                      _isSecondVisible
                          ? const FaIcon(FontAwesomeIcons.caretDown, size: 30,)
                          : const FaIcon(FontAwesomeIcons.caretRight, size: 30,)
                    ],
                  ),

                  Visibility(
                    visible: _isSecondVisible,
                    child: const Column(
                      children: [
                        SizedBox(height: 10,),
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
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 3),
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "ประวัติการเข้ารับการรักษา",
                        style: GoogleFonts.inter(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(width: 5,),
                      _isThirdVisible
                          ? const FaIcon(FontAwesomeIcons.caretDown, size: 30,)
                          : const FaIcon(FontAwesomeIcons.caretRight, size: 30,)
                    ],
                  ),

                  Visibility(
                    visible: _isThirdVisible,
                    child: const Column(
                      children: [
                        SizedBox(height: 10,),
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
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 3),
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "รายงานฉบับเต็ม",
                        style: GoogleFonts.inter(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(width: 5,),
                      _isForthVisible
                          ? const FaIcon(FontAwesomeIcons.caretDown, size: 30,)
                          : const FaIcon(FontAwesomeIcons.caretRight, size: 30,)
                    ],
                  ),

                  Visibility(
                    visible: _isForthVisible,
                    child: const Column(
                      children: [
                        SizedBox(height: 10,),
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
    );
  }
}
