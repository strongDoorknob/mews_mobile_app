// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pulse/models/patientData.dart';
import 'package:pulse/patientinfo/mewsFullReport.dart';
import 'package:pulse/patientinfo/patientListPage.dart';
import 'package:pulse/themes/color.dart';

class PatientMewsDetail extends StatefulWidget {
  const PatientMewsDetail({super.key});

  @override
  State<PatientMewsDetail> createState() => _PatientMewsDetailState();
}

class _PatientMewsDetailState extends State<PatientMewsDetail> {
  @override
  Widget build(BuildContext context) {
    return 
    // Scaffold(
    //   backgroundColor: primaryColor,
    //   body: 
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10,),

          Container(
            // margin: const EdgeInsets.symmetric(horizontal: 10),
            // padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: secondaryColor,
              borderRadius: BorderRadius.circular(15)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const FaIcon(FontAwesomeIcons.fileWaveform, size: 50, color: Color.fromARGB(255, 84, 84, 84),),
                    
                    const SizedBox(width: 20,),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          data[1].name,
                          style: GoogleFonts.inter(
                            fontSize: 20,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "HN: ${data[1].hn}, ",
                              style: GoogleFonts.inter(
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              "เตียงหมายเลข ${data[1].bedNumber}",
                              style: GoogleFonts.inter(
                                fontSize: 20,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),

                const SizedBox(height: 20,),

                Text(
                  "เวลาที่ตรวจล่าสุด",
                  style: GoogleFonts.inter(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                ),

                const SizedBox(height: 10,),

                Row(
                  children: [
                    const FaIcon(FontAwesomeIcons.solidClock, color: Color.fromARGB(255, 84, 84, 84), size: 60,),
                    
                    const SizedBox(width: 10,),

                    Text(
                      data[1].latestMonitor,
                      style: GoogleFonts.inter(
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                ),

                const SizedBox(height: 10,),

                Row(
                  children: [
                    Text(
                      "คะแนน MEWs โดยรวม",
                      style: GoogleFonts.inter(
                        fontSize: 20,
                      ),
                    ),

                    const SizedBox(width: 15,),

                    Text(
                      data[1].sumMEWs.toString(),
                      style: GoogleFonts.inter(
                        fontSize: 40,
                        fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                ),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MewDetail(iconData: FontAwesomeIcons.heartPulse ,mewsValue: data[1].hr, unit: "BPM", mewsScore: "= 3",),
                        MewDetail(iconData: FontAwesomeIcons.maskVentilator ,mewsValue: data[1].spO2, unit: "%", mewsScore: "= 3",),
                        MewDetail(iconData: FontAwesomeIcons.droplet ,mewsValue: data[1].bloodPressure, unit: "mmHg", mewsScore: "= 1",),
                        Row(
                          children: [
                            MewDetail(iconData: FontAwesomeIcons.temperatureThreeQuarters ,mewsValue: data[1].celsius, unit: "°C", mewsScore: "= 3",),
                            // const SizedBox(width: 10,),
                            IconButton(
                              onPressed: () {
                          
                              },
                              icon: const FaIcon(FontAwesomeIcons.rotate, size: 16,)
                            ),
                            Text("°F", style: GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.bold),)
                          ],
                        ),

                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MewDetail(iconData: FontAwesomeIcons.lungs ,mewsValue: data[1].rr, unit: "BPM", mewsScore: "= 0",),
                        Row(
                          children: [
                            const FaIcon(FontAwesomeIcons.brain, color: Color.fromARGB(255, 84, 84, 84), size: 30,),
                            const SizedBox(width: 10,),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 10,),
                              decoration: BoxDecoration(
                                color: forthColor,
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: Text(
                                data[1].consciousness.title,
                                style: GoogleFonts.inter(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            const SizedBox(width: 10,),
                            Text(
                              "= 2",
                              style: GoogleFonts.inter(
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                              ),
                            )
                          ],
                        ),
                        MewDetail(iconData: FontAwesomeIcons.flask ,mewsValue: data[1].urine, unit: "mmHg", mewsScore: "= 0",),
                      ],
                    )
                  ],
                ),

                const SizedBox(height: 10,),

                // Row(
                //   children: [
                //     Text(
                //       "ดูรายงานฉบับเต็ม",
                //       style: GoogleFonts.inter(
                //         fontSize: 20
                //       ),
                //     ),
                //     GestureDetector(
                //       onTap: (){},
                //       child: Text(
                //         "ที่นี่",
                //         style: GoogleFonts.inter(
                //           fontSize: 20,
                //           color: Colors.red,
                //           // fontWeight: FontWeight.bold,
                //           decoration: TextDecoration.underline,
                //           decorationColor: Colors.red,
                //         ),
                //       )
                //     )
                //   ],
                // ),

                // const SizedBox(height: 100,),

                // Align(
                //   alignment: Alignment.bottomRight,
                //   child: Container(
                //     margin: const EdgeInsets.all(10),
                //     child: FilledButton(
                //       onPressed: (){
                //         Navigator.push(
                //           context, 
                //           MaterialPageRoute(builder: (context) => const FullReport())
                //         );
                //       }, 
                //       style: FilledButton.styleFrom(
                //         foregroundColor: Colors.black,
                //         backgroundColor: const Color(0xFFFFDEAC),
                //         padding: const EdgeInsets.all(20),
                //         shape: RoundedRectangleBorder(
                //           borderRadius: BorderRadius.circular(15)
                //         )
                //       ),
                //       child: Text(
                //         "อัพเดทคะแนน",
                //         style: GoogleFonts.inter(
                //           fontSize: 24,
                //           fontWeight: FontWeight.bold
                //         ),
                //       )
                //     ),
                //   ),
                // ),
              ],
            ),
          )
        ] 
      );
    // );
  }
}

class MewDetail extends StatelessWidget {
  final double mewsValue;
  final String unit;
  final String mewsScore;
  final IconData iconData;

  const MewDetail({
    super.key,
    required this.unit,
    required this.mewsScore,
    required this.mewsValue,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FaIcon(iconData, color: const Color.fromARGB(255, 84, 84, 84), size: 30,),
        const SizedBox(width: 10,),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10,),
          decoration: BoxDecoration(
            color: forthColor,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Text(
            "$mewsValue $unit",
            style: GoogleFonts.inter(
              fontSize: 15,
            ),
          ),
        ),

        const SizedBox(width: 10,),
        
        Text(
          mewsScore,
          style: GoogleFonts.inter(
            fontSize: 15,
            fontWeight: FontWeight.bold
          ),
        )
      ],
    );
  }
}