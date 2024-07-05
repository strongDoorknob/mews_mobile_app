// ignore_for_file: camel_case_types, unused_import

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pulse/models/patientData.dart';
import 'package:pulse/themes/color.dart';
import 'package:timelines/timelines.dart';  

// Assuming you have the following widgets in your project
import 'package:pulse/patientinfo/patientGeneralInfoListPage.dart'; // For navigation

class indPatientInfo extends StatefulWidget {
  const indPatientInfo({super.key});

  @override
  State<indPatientInfo> createState() => _indPatientInfoState();
}

class CustomTimelineWidget extends StatelessWidget {
  final String dateText;
  final List<String> eventTimes;
  final List<String> eventDescriptions;

  const CustomTimelineWidget({
    super.key,
    required this.dateText,
    required this.eventTimes,
    required this.eventDescriptions,
  });

  @override
  Widget build(BuildContext context) {
    double containerHeight = 75.0 * eventTimes.length;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          dateText,
          style: GoogleFonts.inter(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          height: containerHeight, // You can modify this height as needed
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: FixedTimeline.tileBuilder(
            theme: TimelineTheme.of(context).copyWith(
              nodePosition: 0,
            ),
            builder: TimelineTileBuilder.connectedFromStyle(
              contentsBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${eventTimes[index]} นาฬิกา",
                      style: GoogleFonts.inter(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "- ${eventDescriptions[index]}",
                      style: GoogleFonts.inter(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              connectorStyleBuilder: (context, index) => ConnectorStyle.solidLine,
              indicatorStyleBuilder: (context, index) => IndicatorStyle.dot,
              itemCount: eventTimes.length,
            ),
          ),
        ),
      ],
    );
  }
}

class _indPatientInfoState extends State<indPatientInfo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 400,
          decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Text(
                "ID: ${data[1].id}",
                textAlign: TextAlign.start,
                style: GoogleFonts.inter(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Column(
                    children: [
                      SizedBox(height: 10,),
                      FaIcon(FontAwesomeIcons.solidIdCard, size: 80,),
                    ],
                  ),
                  SizedBox(
                    width: 220,
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(labelText: "ชื่อ"),
                          initialValue: data[1].name.split(" ")[0],
                          readOnly: true,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(labelText: "นามสกุล"),
                          initialValue: data[1].name.split(" ")[1],
                          readOnly: true,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 80,
                    child: TextFormField(
                      decoration: const InputDecoration(labelText: "เพศ"),
                      initialValue: "หญิง",
                      readOnly: true,
                    ),
                  ),
                  SizedBox(
                    width: 40,
                    child: TextFormField(
                      decoration: const InputDecoration(labelText: "อายุ"),
                      initialValue: "23",
                      readOnly: true,
                    ),
                  ),
                  SizedBox(
                    width: 80,
                    child: TextFormField(
                      decoration: const InputDecoration(labelText: "สัญชาติ"),
                      initialValue: "ไทย",
                      readOnly: true,
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    child: TextFormField(
                      decoration: const InputDecoration(labelText: "ว/ด/ป เกิด"),
                      initialValue: "23/05/2370",
                      readOnly: true,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              TextFormField(
                decoration: const InputDecoration(labelText: "เลขบัตรประจำตัวประชาชน"),
                initialValue: "36477..489873",
                readOnly: true,
              ),
              const SizedBox(height: 10,),
              TextFormField(
                decoration: const InputDecoration(labelText: "ที่อยู่"),
                initialValue: "โรงเรียนเวทมนต์สุพรรณหงส์",
                readOnly: true,
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 160,
                    child: TextFormField(
                      decoration: const InputDecoration(labelText: "รหัสไปรษณีย์"),
                      initialValue: "12345",
                      readOnly: true,
                    ),
                  ),
                  SizedBox(
                    width: 160,
                    child: TextFormField(
                      decoration: const InputDecoration(labelText: "เบอร์โทรติดต่อ"),
                      initialValue: "088-xxx-xxxx",
                      readOnly: true,
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

class PatientTimeline extends StatefulWidget {
  const PatientTimeline({super.key});

  @override
  State<PatientTimeline> createState() => _PatientTimelineState();
}

class _PatientTimelineState extends State<PatientTimeline> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTimelineWidget(
              dateText: "27 พฤษภาคม พ.ศ. 2567",
              eventTimes: ["xx:xx:xx", "xx:xx:xx", "xx:xx:xx"],
              eventDescriptions: [
                "นำตัวเข้าโรงพยาบาล 1",
                "ออกจากโรงพยาบาล 1",
                "นำตัวเข้าโรงพยาบาล 2",
              ],
            ),
            CustomTimelineWidget(
              dateText: "28 พฤษภาคม พ.ศ. 2567",
              eventTimes: [
                "xx:xx:xx",
                "xx:xx:xx",
                "xx:xx:xx",
                "xx:xx:xx",
                "xx:xx:xx",
                "xx:xx:xx",
              ],
              eventDescriptions: [
                "นำตัวเข้าโรงพยาบาล 1",
                "ออกจากโรงพยาบาล 1",
                "นำตัวเข้าโรงพยาบาล 2",
                "นำตัวเข้าโรงพยาบาล 1",
                "ออกจากโรงพยาบาล 1",
                "นำตัวเข้าโรงพยาบาล 2",
              ],
            ),
            CustomTimelineWidget(
              dateText: "29 พฤษภาคม พ.ศ. 2567",
              eventTimes: ["xx:xx:xx", "xx:xx:xx", "xx:xx:xx"],
              eventDescriptions: [
                "นำตัวเข้าโรงพยาบาล 1",
                "ออกจากโรงพยาบาล 1",
                "นำตัวเข้าโรงพยาบาล 2",
              ],
            ),
          ],
        ),
      ],
    );
  }
}
