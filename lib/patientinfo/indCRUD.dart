// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_local_variable, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pulse/models/patientData.dart';
import 'package:timelines/timelines.dart';

// Assuming you have the following widgets in your project
import 'package:pulse/patientinfo/patientGeneralInfoListPage.dart'; // For navigation

class indPatientInfo extends StatefulWidget {
  const indPatientInfo({Key? key});

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
    final Size size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          dateText,
          style: GoogleFonts.inter(
            fontSize: size.width * 0.06,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          height: containerHeight,
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
          child: FixedTimeline.tileBuilder(
            theme: TimelineTheme.of(context).copyWith(
              nodePosition: 0,
            ),
            builder: TimelineTileBuilder.connectedFromStyle(
              contentsBuilder: (context, index) => Padding(
                padding: EdgeInsets.all(size.width * 0.02),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${eventTimes[index]} นาฬิกา",
                      style: GoogleFonts.inter(
                        fontSize: size.width * 0.05,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "- ${eventDescriptions[index]}",
                      style: GoogleFonts.inter(
                        fontSize: size.width * 0.045,
                      ),
                    ),
                  ],
                ),
              ),
              connectorStyleBuilder: (context, index) =>
                  ConnectorStyle.solidLine,
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
    final Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        Container(
          width: size.width,
          height: size.height * 0.5,
          decoration: BoxDecoration(
            color: Color(0xffFFDDEC),
            borderRadius: BorderRadius.circular(size.width * 0.03),
          ),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Text(
                "ID: ${data[1].id}",
                textAlign: TextAlign.start,
                style: GoogleFonts.inter(
                  fontSize: size.width * 0.08,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      SizedBox(height: size.width * 0.04),
                      FaIcon(FontAwesomeIcons.solidIdCard,
                          size: size.width * 0.2),
                    ],
                  ),
                  SizedBox(
                    width: size.width * 0.4,
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(labelText: "ชื่อ"),
                          initialValue: data[1].name.split(" ")[0],
                          readOnly: true,
                        ),
                        TextFormField(
                          decoration:
                              const InputDecoration(labelText: "นามสกุล"),
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
                    width: size.width * 0.2,
                    child: TextFormField(
                      decoration: const InputDecoration(labelText: "เพศ"),
                      initialValue: "หญิง",
                      readOnly: true,
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.1,
                    child: TextFormField(
                      decoration: const InputDecoration(labelText: "อายุ"),
                      initialValue: "23",
                      readOnly: true,
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.2,
                    child: TextFormField(
                      decoration: const InputDecoration(labelText: "สัญชาติ"),
                      initialValue: "ไทย",
                      readOnly: true,
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.25,
                    child: TextFormField(
                      decoration:
                          const InputDecoration(labelText: "ว/ด/ป เกิด"),
                      initialValue: "23/05/2370",
                      readOnly: true,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration:
                    const InputDecoration(labelText: "เลขบัตรประจำตัวประชาชน"),
                initialValue: "36477..489873",
                readOnly: true,
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: "ที่อยู่"),
                initialValue: "โรงเรียนเวทมนต์สุพรรณหงส์",
                readOnly: true,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: size.width * 0.3,
                    child: TextFormField(
                      decoration:
                          const InputDecoration(labelText: "รหัสไปรษณีย์"),
                      initialValue: "12345",
                      readOnly: true,
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.3,
                    child: TextFormField(
                      decoration:
                          const InputDecoration(labelText: "เบอร์โทรติดต่อ"),
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
  const PatientTimeline({Key? key});

  @override
  State<PatientTimeline> createState() => _PatientTimelineState();
}

class _PatientTimelineState extends State<PatientTimeline> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Column(
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
