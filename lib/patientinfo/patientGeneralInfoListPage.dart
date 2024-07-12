// ignore_for_file: unused_import, prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pulse/analysis/addPatient.dart';
import 'package:pulse/models/patientData.dart';
import 'package:pulse/patientinfo/indCRUD.dart';
import 'package:pulse/patientinfo/mainInfo.dart';
import 'package:pulse/screens/home.dart';
import 'package:pulse/screens/setting.dart';
import 'package:pulse/themes/color.dart';

class PatientCRUDPage extends StatefulWidget {
  const PatientCRUDPage({super.key});

  @override
  State<PatientCRUDPage> createState() => _PatientCRUDPageState();
}

class _PatientCRUDPageState extends State<PatientCRUDPage> {
  
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    String name = 'ศิวศิษย์'; // Example name
    String firstLetter = name.isNotEmpty ? name[0].toUpperCase() : '';

    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
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

              SizedBox(height: size.height * 0.027),

              // Patient database section
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "ฐานข้อมูลคนไข้",
                      style: GoogleFonts.inter(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: size.height * 0.02),

                    Form(
                      child: SearchAnchor(
                        builder: (BuildContext context, SearchController controller) {
                          return SearchBar(
                            controller: controller,
                            padding: WidgetStatePropertyAll<EdgeInsets>(EdgeInsets.symmetric(horizontal: size.width * 0.03)),
                            onTap: () {
                              controller.openView();
                            },
                            onChanged: (_) {
                              controller.openView();
                            },
                            leading: const Icon(Icons.search, size: 30),
                            shape: WidgetStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            elevation: WidgetStateProperty.all(0),
                            backgroundColor: WidgetStateProperty.all(Color(0xffFFDDEC)), // Background color
                          );
                        }, 
                        suggestionsBuilder: (BuildContext context, SearchController controller) {
                          return List<ListTile>.generate(5, (int index) {
                            final String item = 'คนไข้คนที่ $index';
                            return ListTile(
                              title: Text(item),
                              onTap: () {
                                setState(() {
                                  controller.closeView(item);
                                });
                              },
                            );
                          });
                        },
                      )
                    )
                  ],
                ),
              ),

              const SizedBox(height: 20,),

              Container(
                margin: EdgeInsets.symmetric(horizontal: size.width * 0.02),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xffFFDDEC),
                ),
                height: size.height * 0.6,
                // width: 300,
                child: Padding(
                  padding: EdgeInsets.only(top: size.width * 0.01),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: ListView.builder(
                          itemCount: data.length,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 10),
                              padding: const EdgeInsets.symmetric(horizontal: 10,),
                              child: Container(
                                decoration: const BoxDecoration(
                                  border: BorderDirectional(bottom: BorderSide())
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text( 
                                      "${data[index].id}. ${data[index].name}",
                                      style: GoogleFonts.inter(
                                        textStyle: const TextStyle(
                                          fontSize: 18,
                                        )
                                      ),
                                    ),
                                                
                                    IconButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context, 
                                          MaterialPageRoute(builder: (context) => const MainInfo())
                                        );
                                      },
                                      icon: const FaIcon(FontAwesomeIcons.magnifyingGlassArrowRight, size: 20,)
                                    )
                                  ],
                                ),
                              ),
                            );
                          }
                        )
                      ),

                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          margin: const EdgeInsets.all(20),
                          child: FilledButton(
                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => AddPatientPage()),
                              );
                            }, 
                            style: FilledButton.styleFrom(
                              foregroundColor: Colors.black,
                              backgroundColor: Color(0xffFFDEAC),
                              padding: const EdgeInsets.all(20),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)
                              )
                            ),
                            child: Text(
                              "เพิ่มคนไข้",
                              style: GoogleFonts.inter(
                                fontSize: size.width * 0.045,
                              ),
                            )
                          ),
                        ),
                      ),
                    ],
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
