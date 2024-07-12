// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pulse/models/patientData.dart';
import 'package:pulse/themes/color.dart';

class PatientMewsDetail extends StatefulWidget {
  const PatientMewsDetail({super.key});

  @override
  State<PatientMewsDetail> createState() => _PatientMewsDetailState();
}

class _PatientMewsDetailState extends State<PatientMewsDetail> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: size.height * 0.002),
        Container(
          decoration: BoxDecoration(
            color: Color(0xffFFDDEC),
            borderRadius: BorderRadius.circular(size.width * 0.05),
          ),
          padding: EdgeInsets.all(size.width * 0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.fileWaveform,
                    size: size.width * 0.1,
                    color: Color.fromARGB(255, 161, 161, 161),
                  ),
                  SizedBox(width: size.width * 0.05),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data[1].name,
                          style: GoogleFonts.inter(
                            fontSize: size.width * 0.06,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "HN: ${data[1].hn}, ",
                              style: GoogleFonts.inter(
                                fontSize: size.width * 0.04,
                              ),
                            ),
                            Text(
                              "เตียงหมายเลข ${data[1].bedNumber}",
                              style: GoogleFonts.inter(
                                fontSize: size.width * 0.04,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.023),
              Text(
                "เวลาที่ตรวจล่าสุด",
                style: GoogleFonts.inter(
                  fontSize: size.width * 0.054,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: size.height * 0.01),
              Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.solidClock,
                    color: Colors.black,
                    size: size.width * 0.08,
                  ),
                  SizedBox(width: size.width * 0.02),
                  Text(
                    data[1].latestMonitor,
                    style: GoogleFonts.inter(
                      fontSize: size.width * 0.065,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.005),
              Row(
                children: [
                  Text(
                    "คะแนน MEWs โดยรวม:",
                    style: GoogleFonts.inter(
                      fontSize: size.width * 0.052,
                    ),
                  ),
                  SizedBox(width: size.width * 0.02),
                  Text(
                    data[1].sumMEWs.toString(),
                    style: GoogleFonts.inter(
                      fontSize: size.width * 0.08,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.01),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MewDetail(
                          iconData: FontAwesomeIcons.heartPulse,
                          mewsValue: data[1].hr,
                          unit: "BPM",
                          mewsScore: "=3",
                          size: size,
                        ),
                        MewDetail(
                          iconData: FontAwesomeIcons.maskVentilator,
                          mewsValue: data[1].spO2,
                          unit: "%",
                          mewsScore: "=3",
                          size: size,
                        ),
                        MewDetail(
                          iconData: FontAwesomeIcons.droplet,
                          mewsValue: data[1].bloodPressure,
                          unit: "mmHg",
                          mewsScore: "=1",
                          size: size,
                        ),
                        Row(
                          children: [
                            MewDetail(
                              iconData: FontAwesomeIcons.temperatureThreeQuarters,
                              mewsValue: data[1].celsius,
                              unit: "°C",
                              mewsScore: "=3",
                              size: size,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: FaIcon(
                                FontAwesomeIcons.rotate,
                                size: size.width * 0.04,
                              ),
                            ),
                            Text(
                              "°F",
                              style: GoogleFonts.inter(
                                fontSize: size.width * 0.04,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MewDetail(
                          iconData: FontAwesomeIcons.lungs,
                          mewsValue: data[1].rr,
                          unit: "BPM",
                          mewsScore: "=0",
                          size: size,
                        ),
                        Row(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.brain,
                              color: Color.fromARGB(255, 84, 84, 84),
                              size: size.width * 0.06,
                            ),
                            SizedBox(width: size.width * 0.02),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: size.width * 0.02),
                              decoration: BoxDecoration(
                                color: forthColor,
                                borderRadius: BorderRadius.circular(size.width * 0.03),
                              ),
                              child: Text(
                                data[1].consciousness.title,
                                style: GoogleFonts.inter(
                                  fontSize: size.width * 0.04,
                                ),
                              ),
                            ),
                            SizedBox(width: size.width * 0.02),
                            Text(
                              "= 2",
                              style: GoogleFonts.inter(
                                fontSize: size.width * 0.04,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        MewDetail(
                          iconData: FontAwesomeIcons.flask,
                          mewsValue: data[1].urine,
                          unit: "mmHg",
                          mewsScore: "= 0",
                          size: size,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class MewDetail extends StatelessWidget {
  final double mewsValue;
  final String unit;
  final String mewsScore;
  final IconData iconData;
  final Size size;

  const MewDetail({
    super.key,
    required this.unit,
    required this.mewsScore,
    required this.mewsValue,
    required this.iconData,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: size.width * 0.01),
      child: Row(
        children: [
          FaIcon(
            iconData,
            color: Color.fromARGB(255, 84, 84, 84),
            size: size.width * 0.08,
          ),
          SizedBox(width: size.width * 0.02),
          Container(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.02),
            decoration: BoxDecoration(
              color: forthColor,
              borderRadius: BorderRadius.circular(size.width * 0.03),
            ),
            child: Text(
              "$mewsValue $unit",
              style: GoogleFonts.inter(
                fontSize: size.width * 0.04,
              ),
            ),
          ),
          SizedBox(width: size.width * 0.02),
          Text(
            mewsScore,
            style: GoogleFonts.inter(
              fontSize: size.width * 0.04,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
