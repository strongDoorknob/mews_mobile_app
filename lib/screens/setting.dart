// ignore_for_file: prefer_const_constructors, prefer_const_declarations

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pulse/screens/home.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

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
                          .withOpacity(0.3), // Shadow color with opacity
                      spreadRadius: 0, // How much the shadow spreads
                      blurRadius: 4, // The blur radius of the shadow
                      offset:
                          Offset(0, 4), // Offset in x and y direction (x, y)
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
              SizedBox(height: size.height * 0.04),
              // Settings items
              SettingsItem(
                title: 'รายละเอียดบัญชีผู้ใช้',
                icon: Icons.account_circle,
                onTap: () {},
              ),
              SettingsItem(
                title: 'การแจ้งเตือน',
                icon: Icons.notifications,
                onTap: () {},
              ),
              SettingsItem(
                title: 'ความเป็นส่วนตัว',
                icon: Icons.lock,
                onTap: () {},
              ),
              SettingsItem(
                title: 'การจัดการทั่วไป',
                icon: Icons.remove_red_eye,
                onTap: () {},
              ),
              SettingsItem(
                title: 'หน่วยช่วยเหลือ & FAQs',
                icon: Icons.headset,
                onTap: () {},
              ),
              SettingsItem(
                title: 'เกี่ยวกับแอพ',
                icon: Icons.help,
                onTap: () {},
              ),
              SizedBox(height: size.height * 0.04),
              Center(
                child: Text(
                  'รีเซ็ตข้อมูลทางการแพทย์',
                  style: GoogleFonts.inter(
                    color: Colors.grey,
                    fontSize: size.width * 0.04,
                  ),
                ),
              ),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'ออกจากระบบ',
                    style: GoogleFonts.inter(
                      color: Colors.red,
                      fontSize: size.width * 0.04,
                    ),
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

class SettingsItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  const SettingsItem({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ListTile(
      leading: Icon(icon, color: Colors.black, size: size.width * 0.09),
      title: Text(
        title,
        style: GoogleFonts.inter(
          textStyle: TextStyle(fontSize: size.width * 0.045),
        ),
      ),
      trailing: FaIcon(FontAwesomeIcons.circleArrowRight, color: Colors.black, size: size.width * 0.065),
      onTap: onTap,
    );
  }
}
