// ignore_for_file: prefer_const_constructors, deprecated_member_use, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pulse/screens/setting.dart';

class CalculatePage extends StatelessWidget {
  const CalculatePage({super.key});

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
                    MaterialPageRoute(builder: (context) => SettingsPage())
                  );
                },
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(size.width * 0.04),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Row with icons and input fields
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Pulse/HR section (shifted down slightly)
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const FaIcon(FontAwesomeIcons.heartbeat, size: 50),
                    const Text('Pulse/HR'),
                    const SizedBox(height: 10),
                    Container(
                      width: 100,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(10),
                        ),
                      ),
                    ),
                  ],
                ),
                // SpO2 section (remains at default position)
                Column(
                  children: [
                    const FaIcon(FontAwesomeIcons.maskVentilator, size: 50),
                    const Text('SpO2'),
                    const SizedBox(height: 10),
                    Container(
                      width: 100,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(10),
                        ),
                      ),
                    ),
                  ],
                ),
                // Temp section (shifted down slightly)
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const FaIcon(FontAwesomeIcons.thermometerHalf, size: 50),
                    const Text('Temp (°C)'),
                    const SizedBox(height: 10),
                    Container(
                      width: 100,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(10),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Other sections follow similar pattern
            // Systolic BP, RR, Conscious, Urine, etc.
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Systolic BP section
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const FaIcon(FontAwesomeIcons.tint, size: 50),
                    const Text('Systolic BP'),
                    const SizedBox(height: 10),
                    Container(
                      width: 100,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(10),
                        ),
                      ),
                    ),
                  ],
                ),
                // Patient section
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const FaIcon(FontAwesomeIcons.solidUser, size: 50),
                    const Text('<patient>'),
                    const SizedBox(height: 10),
                    Text(
                      'ลงคะแนน\n(เลือกตัวเลขอยู่ในช่วงนั้น ๆ)',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                // RR section
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const FaIcon(FontAwesomeIcons.lungs, size: 50),
                    const Text('RR'),
                    const SizedBox(height: 10),
                    Container(
                      width: 100,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(10),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Conscious and Urine sections
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Conscious section
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const FaIcon(FontAwesomeIcons.brain, size: 50),
                    const Text('Conscious\n(C, A, V, P, U)'),
                    const SizedBox(height: 10),
                    Container(
                      width: 100,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const TextField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(10),
                        ),
                      ),
                    ),
                  ],
                ),
                // Urine section
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const FaIcon(FontAwesomeIcons.vial, size: 50),
                    const Text('Urine\n(>=2 hours)'),
                    const SizedBox(height: 10),
                    Container(
                      width: 100,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(10),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Calculate action
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xffFFB2B2),
                padding: EdgeInsets.symmetric(vertical: size.height * 0.02, horizontal: size.width * 0.2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(size.width * 0.05),
                ),
              ),
              child: Text(
                'คำนวณ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: size.width * 0.05,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: CalculatePage(),
  ));
}
