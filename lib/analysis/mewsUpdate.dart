// ignore_for_file: deprecated_member_use, sort_child_properties_last, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pulse/analysis/addPatient.dart';
import 'package:pulse/screens/home.dart';
import 'package:pulse/screens/setting.dart';

class MewsUpdatePage extends StatelessWidget {
  const MewsUpdatePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(size.width * 0.04),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'ยินดีต้อนรับ,',
                            style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                fontSize: size.width * 0.06,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Text(
                            '<name>!!',
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
                    ],
                  ),
                  IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.cog,
                      size: size.width * 0.08,
                    ),
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
            SizedBox(height: size.height * 0.02),
            const Text(
              'ระบบคะแนนคะแนนแจ้งเตือนสัญญาณ\nภาวะวิกฤติ',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  sectionTitle('ใน 2 ชั่วโมง', size),
                  patientInfoCard('<id>', '<fl_num>', size),
                  SizedBox(height: size.height * 0.02),
                  sectionTitle('ใน 1 ชั่วโมง', size),
                  patientInfoCard('<id>', '<fl_num>', size),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.02, vertical: size.height * 0.02),
              child: Align(
                alignment: Alignment.centerRight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: size.width * 0.4, // Fixed width for the button
                      height: size.height * 0.06, // Fixed height for the button
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AddPatientPage()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                            horizontal: size.width * 0.05,
                            vertical: size.height * 0.015,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          backgroundColor: Colors.black,
                        ),
                        child: Row(
                          mainAxisAlignment:
                              MainAxisAlignment.center, // Center the content
                          children: [
                            FaIcon(
                              FontAwesomeIcons.plus,
                              color: Colors.white,
                              size: size.width * 0.04,
                            ),
                            SizedBox(width: size.width * 0.02),
                            Text(
                              'เพิ่มข้อมูล',
                              style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                  fontSize: size.width * 0.04,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
                    RichText(
                      textAlign: TextAlign.right,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'หรือ ',
                            style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                fontSize: size.width * 0.04,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          TextSpan(
                            text: 'นำเข้า',
                            style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                fontSize: size.width * 0.04,
                                color: Colors.black,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                          TextSpan(
                            text: '\nจากฐานข้อมูล',
                            style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                fontSize: size.width * 0.04,
                                color: Colors.black,
                              ),
                            ),
                          ),
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
    );
  }

  Widget sectionTitle(String title, Size size) {
    return Padding(
      padding: EdgeInsets.only(left: size.width * 0.07),
      child: Text(
        title,
        style: GoogleFonts.inter(
          textStyle: TextStyle(
            fontSize: size.width * 0.08,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  Widget patientInfoCard(String id, String flNum, Size size) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
      child: SizedBox(
        width: double.infinity,
        child: Card(
          color: Colors.grey[300],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: ListTile(
            contentPadding: EdgeInsets.symmetric(
              horizontal: size.width * 0.04,
              vertical: size.height * 0.02,
            ),
            leading: FaIcon(
              FontAwesomeIcons.userNurse,
              size: size.width * 0.1,
              color: Colors.black,
            ),
            title: Text(
              'Patient id. $id',
              style: GoogleFonts.inter(
                textStyle: TextStyle(
                  fontSize: size.width * 0.05,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            subtitle: Text(
              'Bed no. $id\nFl. $flNum',
              style: GoogleFonts.inter(
                textStyle: TextStyle(
                  fontSize: size.width * 0.04,
                  color: Colors.black,
                ),
              ),
            ),
            trailing: ElevatedButton(
              onPressed: () {},
              child: Text(
                'Details',
                style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    fontSize: size.width * 0.04,
                    color: Colors.white,
                  ),
                ),
              ),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.02,
                  vertical: size.height * 0.01,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                backgroundColor: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
