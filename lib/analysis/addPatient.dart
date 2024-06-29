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
  final _lastNameController = TextEditingController(); // Added last name controller
  final _ageController = TextEditingController();
  final _hnController = TextEditingController();
  final _weightController = TextEditingController();
  final _bloodPressureController = TextEditingController();
  final _diagnosisController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    const String name =
        '森下'; 
    final String firstLetter = name.isNotEmpty ? name[0].toUpperCase() : '';

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(size.width * 0.03),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
              Text(
                'เพิ่มข้อมูลคนไข้',
                style: TextStyle(
                  fontSize: size.width * 0.06,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: size.height * 0.02),
              Container(
                height: size.height * 0.65,
                padding: EdgeInsets.all(size.width * 0.04),
                decoration: BoxDecoration(
                  color: const Color(0xffFFDDEC),
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
                            FontAwesomeIcons.fileSignature,
                            size: size.width * 0.2,
                          ),
                          SizedBox(width: size.width * 0.05),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(size.width * 0.03),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 250, 195, 219),
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
                      SizedBox(height: size.height * 0.07),
                      _buildFormRow(size, FontAwesomeIcons.userAlt, 'ชื่อ', _nameController),
                      SizedBox(height: size.height * 0.02),
                      _buildFormRow(size, FontAwesomeIcons.userAlt, 'นามสกุล', _lastNameController),
                      SizedBox(height: size.height * 0.02),
                      _buildFormRow(size, FontAwesomeIcons.calendarDay, 'อายุ', _ageController),
                      SizedBox(height: size.height * 0.02),
                      _buildFormRow(size, FontAwesomeIcons.solidHospital, 'เลข HN', _hnController),
                      SizedBox(height: size.height * 0.02),
                      _buildFormRow(size, FontAwesomeIcons.solidCalendarDays, 'วัน/เดือน/ปี ที่ประเมินคนไข้', _weightController),
                      SizedBox(height: size.height * 0.02),
                      _buildFormRow(size, FontAwesomeIcons.solidClock, 'เวลาทำการประเมินคนไข้', _bloodPressureController),
                      SizedBox(height: size.height * 0.02),
                      _buildFormRow(size, FontAwesomeIcons.buildingUser, 'หอผู้ป่วย', _diagnosisController),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5),
              Center(
                child: TextButton.icon(
                  icon: FaIcon(FontAwesomeIcons.solidArrowAltCircleRight, size: size.width * 0.07, color: Colors.black,),
                  label: Text(
                    'ต่อไป',
                    style: TextStyle(fontSize: size.width * 0.07, color: Colors.black),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const CalculatePage()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFormRow(Size size, IconData icon, String hintText, TextEditingController controller) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        FaIcon(icon, size: size.width * 0.07, color: Colors.black,),
        SizedBox(width: size.width * 0.05),
        Expanded(
          child: TextFormField(
            controller: controller,
            decoration: InputDecoration(
              hintText: hintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(size.width * 0.05),
              ),
              contentPadding: EdgeInsets.symmetric(
                vertical: size.height * 0.007,
                horizontal: size.width * 0.04,
              ),
              isDense: true,
            ),
            style: TextStyle(fontSize: size.width * 0.042),
          ),
        ),
      ],
    );
  }
}
