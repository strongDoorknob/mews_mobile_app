// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pulse/results/low.dart';
import 'package:pulse/screens/home.dart';
import 'package:pulse/screens/setting.dart';

class MediumHighResultPage extends StatelessWidget {
  const MediumHighResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
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
            Row(
              children: [
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.arrowLeft),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LowPage()),
                    );
                  },
                ),
                Text(
                  'ย้อนกลับ',
                  style: GoogleFonts.inter(
                    textStyle: TextStyle(
                      fontSize: size.width * 0.05,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: size.height * 0.02),
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
            SizedBox(height: size.height * 0.02),
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(FontAwesomeIcons.solidCircleCheck,
                          size: size.width * 0.1),
                      SizedBox(width: size.width * 0.02),
                      Container(
                        margin: EdgeInsets.only(left: size.width * 0.05),
                        padding: EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 10.0),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade400,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Text(
                          'การพยาบาล',
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                              fontSize: size.width * 0.05,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.04),
                  Text(
                    '''1. สังเกตและประเมินอาการทุกๆ 30 นาที - 1 ชั่วโมงเป็นจำนวน 3 ครั้ง (เปลี่ยนเป็นทุกๆ 15-30 นาที ถ้า คะแนนยังเท่าเดิม), และเฝ้าระวังตามมาตรฐานการพยาบาล รายงานหัวหน้าเวร รวมถึงดูแลกิจกรรมการพยาบาลตามอาการ\n2. รายงานแพทย์ Intern หรือ 1st call มาดูอาการภายใน 30 นาที/สั่งการรักษา ถ้าอาการยังไม่ดีขึ้น รายงานไปยังแพทย์ 2nd call และ 3rd call ให้มาดูอาการภายใน 15 นาทีและสั่งการรักษา\n3. พิจารณาเพิ่มการ record I/O ทุกๆ 4 ชั่วโมง ถ้า urine น้อยกว่า 100 cc. ใน 4 ชั่วโมง รายงานแพทย์''',
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontSize: size.width * 0.04,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: size.height * 0.04),
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
                                  text:
                                      'สามารถกดดูหรือ\nอัพเดทคะแนนคนไข้\nได้ ',
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
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        },
                        child: Text('กลับไปที่หน้าหลัก'),
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
