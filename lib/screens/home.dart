// ignore_for_file: prefer_const_constructors, deprecated_member_use, prefer_const_declarations

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pulse/analysis/mews.dart';
import 'package:pulse/screens/allFeature.dart';
import 'package:pulse/screens/setting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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

              // Search bar
              Container(
                margin: EdgeInsets.only(top: size.height * 0.02),
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(size.width * 0.05),
                  border: Border.all(
                    color: Color(0xff838383), // Border color
                    width: 2.4, // Border width
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black
                          .withOpacity(0.3), 
                      spreadRadius: 0, 
                      blurRadius: 4, 
                      offset:
                          Offset(0, 4), 
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    const Icon(Icons.search,
                        color: Color.fromARGB(255, 128, 127, 127)),
                    SizedBox(width: size.width * 0.02),
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'ค้นหา...',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: size.height * 0.02),

              // Features section
              Container(
                margin: EdgeInsets.only(top: size.height * 0.02),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'ฟีเจอร์ใช้งาน',
                      style: TextStyle(
                          color: Color(0xff464646),
                          fontSize: size.width * 0.05,
                          fontWeight: FontWeight.bold),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AllFeaturesPage()),
                        );
                      },
                      child: Text(
                        'ดูทั้งหมด',
                        style: TextStyle(
                            color: Color(0xff575757),
                            fontSize: size.width * 0.035),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.02),
              SizedBox(
                height: size.height * 0.15,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    FeatureItem(
                      title: 'MEWS',
                      icon: Icons.widgets,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MewsScreen()),
                        );
                      },
                    ),

                    // Add more FeatureItem widgets here
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.1),

              // Center content section
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.solidSmileWink,
                      size: size.width * 0.2,
                      color: Color(0xffffcd50),
                    ),
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

class FeatureItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  const FeatureItem({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: size.width * 0.25,
        margin: EdgeInsets.only(right: size.width * 0.04),
        decoration: BoxDecoration(
          color: Color(0xffba90cb),
          borderRadius: BorderRadius.circular(size.width * 0.02),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: size.width * 0.1, color: Color(0xffe8a0bf)),
            SizedBox(height: size.height * 0.01),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: size.width * 0.045, // Make the font bold
                color:
                    Colors.white, // Set the color to white for better contrast
              ),
            ),
          ],
        ),
      ),
    );
  }
}
