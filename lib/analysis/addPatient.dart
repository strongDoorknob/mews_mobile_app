// ignore_for_file: deprecated_member_use, library_private_types_in_public_api, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pulse/analysis/calculate.dart';
import 'package:pulse/screens/home.dart';
import 'package:pulse/screens/setting.dart';

class AddPatientPage extends StatefulWidget {
  const AddPatientPage({super.key});

  @override
  _PatientFormState createState() => _PatientFormState();
}

class _PatientFormState extends State<AddPatientPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _ageController = TextEditingController();
  final _hnController = TextEditingController();
  final _weightController = TextEditingController();
  final _bloodPressureController = TextEditingController();
  final _diagnosisController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: size.height * 0.08,
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const HomePage()),
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SettingsPage()),
                  );
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: size.height * 0.02),
              Text(
                'เพิ่มข้อมูลคนไข้',
                style: TextStyle(
                  fontSize: size.width * 0.06,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: size.height * 0.02),
              SizedBox(
                height: size.height * 0.655, // Adjust this value to make the container taller
                child: Container(
                  padding: EdgeInsets.all(size.width * 0.04),
                  decoration: BoxDecoration(
                    color: const Color(0xffD9D9D9),
                    borderRadius: BorderRadius.circular(size.width * 0.04),
                  ),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.fileMedical,
                              size: size.width * 0.2,
                            ),
                            SizedBox(width: size.width * 0.05),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.all(size.width * 0.03),
                                decoration: BoxDecoration(
                                  color: const Color(0xffc2bebe),
                                  borderRadius: BorderRadius.circular(size.width * 0.05),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'คนไข้รหัส',
                                      style: TextStyle(
                                        fontSize: size.width * 0.055,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      '<patient_id>',
                                      style: TextStyle(
                                        fontSize: size.width * 0.06,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: size.height * 0.03),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            FaIcon(FontAwesomeIcons.userAlt, size: size.width * 0.08),
                            SizedBox(width: size.width * 0.05),
                            Expanded(
                              child: TextFormField(
                                controller: _nameController,
                                decoration: InputDecoration(
                                  fillColor: const Color(0xffc2bebe),
                                  hintText: 'ชื่อ',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(size.width * 0.05),
                                  ),
                                  contentPadding: EdgeInsets.symmetric(
                                    vertical: size.height * 0.01,
                                    horizontal: size.width * 0.04,
                                  ),
                                  isDense: true,
                                ),
                                style: TextStyle(fontSize: size.width * 0.045),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: size.height * 0.02),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            FaIcon(FontAwesomeIcons.calendarDay, size: size.width * 0.08),
                            SizedBox(width: size.width * 0.05),
                            Expanded(
                              child: TextFormField(
                                controller: _ageController,
                                decoration: InputDecoration(
                                  hintText: 'อายุ',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(size.width * 0.05),
                                  ),
                                  contentPadding: EdgeInsets.symmetric(
                                    vertical: size.height * 0.01,
                                    horizontal: size.width * 0.04,
                                  ),
                                  isDense: true,
                                ),
                                style: TextStyle(fontSize: size.width * 0.045),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: size.height * 0.02),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            FaIcon(FontAwesomeIcons.solidHospital, size: size.width * 0.08),
                            SizedBox(width: size.width * 0.05),
                            Expanded(
                              child: TextFormField(
                                controller: _hnController,
                                decoration: InputDecoration(
                                  hintText: 'เลข HN',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(size.width * 0.05),
                                  ),
                                  contentPadding: EdgeInsets.symmetric(
                                    vertical: size.height * 0.01,
                                    horizontal: size.width * 0.04,
                                  ),
                                  isDense: true,
                                ),
                                style: TextStyle(fontSize: size.width * 0.045),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: size.height * 0.02),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            FaIcon(FontAwesomeIcons.solidCalendarDays, size: size.width * 0.08),
                            SizedBox(width: size.width * 0.05),
                            Expanded(
                              child: TextFormField(
                                controller: _weightController,
                                decoration: InputDecoration(
                                  hintText: 'วัน/เดือน/ปี ที่ประเมินคนไข้',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(size.width * 0.05),
                                  ),
                                  contentPadding: EdgeInsets.symmetric(
                                    vertical: size.height * 0.015,
                                    horizontal: size.width * 0.04,
                                  ),
                                  isDense: true,
                                ),
                                style: TextStyle(fontSize: size.width * 0.045),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: size.height * 0.02),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            FaIcon(FontAwesomeIcons.solidClock, size: size.width * 0.07),
                            SizedBox(width: size.width * 0.05),
                            Expanded(
                              child: TextFormField(
                                controller: _bloodPressureController,
                                decoration: InputDecoration(
                                  hintText: 'เวลาทำการประเมินคนไข้',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(size.width * 0.05),
                                  ),
                                  contentPadding: EdgeInsets.symmetric(
                                    vertical: size.height * 0.015,
                                    horizontal: size.width * 0.04,
                                  ),
                                  isDense: true,
                                ),
                                style: TextStyle(fontSize: size.width * 0.045),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: size.height * 0.02),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            FaIcon(FontAwesomeIcons.buildingUser, size: size.width * 0.075),
                            SizedBox(width: size.width * 0.05),
                            Expanded(
                              child: TextFormField(
                                controller: _diagnosisController,
                                decoration: InputDecoration(
                                  hintText: 'หอผู้ป่วย',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(size.width * 0.05),
                                  ),
                                  contentPadding: EdgeInsets.symmetric(
                                    vertical: size.height * 0.015,
                                    horizontal: size.width * 0.04,
                                  ),
                                  isDense: true,
                                ),
                                style: TextStyle(fontSize: size.width * 0.045),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.015),
              Center(
                child: TextButton.icon(
                  label: Text(
                    'ต่อไป',
                    style: TextStyle(fontSize: size.width * 0.05),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const CalculatePage()),
                    );
                  },
                  icon: FaIcon(FontAwesomeIcons.solidArrowAltCircleRight, size: size.width * 0.05),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
