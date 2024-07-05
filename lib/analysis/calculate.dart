// ignore_for_file: prefer_const_constructors, deprecated_member_use, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pulse/results/low.dart';
import 'package:pulse/screens/home.dart';
import 'package:pulse/screens/setting.dart';

class CalculatePage extends StatelessWidget {
  const CalculatePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    const String name =
        'Nutpraphut'; 
    final String firstLetter = name.isNotEmpty ? name[0].toUpperCase() : '';

    return Scaffold(
      body: SingleChildScrollView(
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
            Center(
              child: Column(
                children: [
                  SizedBox(height: size.height * 0.05),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Pulse/HR section
                      Column(
                        children: [
                          const FaIcon(FontAwesomeIcons.heartbeat, size: 40, color: Color(0xffff006e),),
                          const Text('Pulse/HR'),
                          const SizedBox(height: 10),
                          Container(
                            width: 100,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color(0xffffddec),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: TextField(
                              keyboardType: TextInputType.numberWithOptions(decimal: true),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.all(10),
                              ),
                            ),
                          ),
                        ],
                      ),
                      // SpO2 section
                      Column(
                        children: [
                          const FaIcon(FontAwesomeIcons.maskVentilator, size: 40, color: Color(0xff6D6D6D),),
                          const Text('SpO2'),
                          const SizedBox(height: 10),
                          Container(
                            width: 100,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color(0xffFFDDEC),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: TextField(
                              keyboardType: TextInputType.numberWithOptions(decimal: true),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.all(10),
                              ),
                            ),
                          ),
                        ],
                      ),
                      // Temp section
                      Column(
                        children: [
                          const FaIcon(FontAwesomeIcons.thermometerHalf, size: 40, color: Color(0xff7AC5EE)),
                          const Text('Temp (°C)'),
                          const SizedBox(height: 10),
                          Container(
                            width: 100,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color(0xffFFDDEC),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: TextField(
                              keyboardType: TextInputType.numberWithOptions(decimal: true),
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
                  const SizedBox(height: 50),
                  // Other sections follow similar pattern
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Systolic BP section
                      Column(
                        children: [
                          const FaIcon(FontAwesomeIcons.tint, size: 40, color: Color(0xffFF0000)),
                          const Text('Systolic BP'),
                          const SizedBox(height: 10),
                          Container(
                            width: 100,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color(0xffFFDDEC),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: TextField(
                              keyboardType: TextInputType.numberWithOptions(decimal: true),
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
                        children: const [
                          FaIcon(FontAwesomeIcons.solidUser, size: 70, color: Color.fromARGB(255, 51, 221, 158)),
                          Text(
                            '<patient>',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'ลงคะแนน\n(เลือกตัวเลขอยู่ในช่วงนั้น ๆ)',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                      // RR section
                      Column(
                        children: [
                          const FaIcon(FontAwesomeIcons.lungs, size: 40, color: Color(0xff7569FF)),
                          const Text('RR'),
                          const SizedBox(height: 10),
                          Container(
                            width: 100,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color(0xffFFDDEC),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: TextField(
                              keyboardType: TextInputType.numberWithOptions(decimal: true),
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
                  const SizedBox(height: 30),
                  // Conscious and Urine sections
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Conscious section
                      Column(
                        children: [
                          const FaIcon(FontAwesomeIcons.brain, size: 45, color: Color(0xffffa1ca)),
                          const Text(
                            'Conscious\n(C, A, V, P, U)',
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 12),
                          Container(
                            width: 100,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color(0xffFFDDEC),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: DropdownButton<String>(
                              isExpanded: true,
                              underline: SizedBox(),
                              items: [
                                DropdownMenuItem(value: 'C', child: Text('C')),
                                DropdownMenuItem(value: 'A', child: Text('A')),
                                DropdownMenuItem(value: 'V', child: Text('V')),
                                DropdownMenuItem(value: 'P', child: Text('P')),
                                DropdownMenuItem(value: 'U', child: Text('U')),
                              ],
                              onChanged: (value) {},
                              hint: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text('Select'),
                              ),
                            ),
                          ),
                        ],
                      ),
                      // Urine section
                      Column(
                        children: [
                          const FaIcon(FontAwesomeIcons.vial, size: 45, color: Color(0xffffb84e)),
                          const Text(
                            'Urine\n(>=2 hours)',
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 12),
                          Container(
                            width: 100,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color(0xffFFDDEC),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: TextField(
                              keyboardType: TextInputType.numberWithOptions(decimal: true),
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
                  const SizedBox(height: 50),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LowPage()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffFFB2B2),
                      padding: EdgeInsets.symmetric(
                          vertical: size.height * 0.02,
                          horizontal: size.width * 0.07),
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
          ],
        ),
      ),
    );
  }
}