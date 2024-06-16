// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pulse/screens/home.dart';

class LowPage extends StatelessWidget {
  const LowPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: size.height * 0.15,
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
                  // Implement navigation to settings page
                },
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(size.width * 0.04),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: size.height * 0.02),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    '*คะแนนจะถูกเพิ่มลงในฐานข้อมูลโดยอัตโนมัติ',
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontSize: size.width * 0.04,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(size.width * 0.04),
                decoration: BoxDecoration(
                  color: Color(0xffD9D9D9),
                  borderRadius: BorderRadius.circular(size.width * 0.05),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.cloudSun,
                          size: size.width * 0.12,
                        ),
                        FaIcon(
                          FontAwesomeIcons.cloudMoon,
                          size: size.width * 0.12,
                        ),
                      ],
                    ),
                    SizedBox(height: size.height * 0.02),
                    Text(
                      'คะแนนโดยรวม',
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          fontSize: size.width * 0.08,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.01),
                    Text(
                      '0',
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          fontSize: size.width * 0.15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.01),
                    Text(
                      '(0-1)',
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          fontSize: size.width * 0.05,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.01),
                    FaIcon(
                      FontAwesomeIcons.smile,
                      size: size.width * 0.2,
                      color: Colors.black,
                    ),
                    SizedBox(height: size.height * 0.02),
                    Text(
                      'ความเสี่ยงต่ำ',
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          fontSize: size.width * 0.08,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
                    ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('การพยาบาล'),
                              content: Text('รายละเอียดการพยาบาล...'),
                              actions: <Widget>[
                                TextButton(
                                  child: Text('ปิด'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: Text('กดดูที่นี่'),
                    ),
                    SizedBox(height: size.height * 0.02),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'ที่นี่',
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            fontSize: size.width * 0.04,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey,
                        padding: EdgeInsets.symmetric(
                            vertical: size.height * 0.02,
                            horizontal: size.width * 0.2),
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(size.width * 0.05),
                        ),
                      ),
                      child: Text(
                        'กลับไปที่หน้าหลัก',
                        style: TextStyle(
                          fontSize: size.width * 0.05,
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
    );
  }
}
