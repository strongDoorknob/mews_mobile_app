import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pulse/screens/home.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(size.width * 0.04),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header section
              Padding(
                padding: EdgeInsets.only(top: size.height * 0.07, bottom: size.height * 0.02),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.arrow_back, color: Colors.black),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const HomePage()),
                            );
                          },
                        ),
                        SizedBox(width: size.width * 0.02),
                        Text(
                          'การตั้งค่า',
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                              fontSize: size.width * 0.06,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
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
                ),
                child: Row(
                  children: [
                    const Icon(Icons.search, color: Colors.grey),
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
      leading: Icon(icon, color: Colors.black, size: size.width * 0.07),
      title: Text(
        title,
        style: GoogleFonts.inter(
          textStyle: TextStyle(fontSize: size.width * 0.045),
        ),
      ),
      trailing: FaIcon(FontAwesomeIcons.circleArrowRight, color: Colors.black, size: size.width * 0.05),
      onTap: onTap,
    );
  }
}
