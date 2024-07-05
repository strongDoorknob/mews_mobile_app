// ignore_for_file: file_names, unused_import

import 'package:flutter/material.dart';

enum Consciousness {
  conscious(title: "conscious"),
  alert(title: "alert"),
  voice(title: "voice"),
  pain(title: "pain"),
  unconscious(title: "unconscious");

  const Consciousness({required this.title});
  final String title;
}

class Patient {
  Patient({
    required this.id,
    required this.name,
    required this.hn,
    required this.bedNumber,
    required this.latestMonitor,
    required this.sumMEWs,
    required this.hr,
    required this.rr,
    required this.spO2,
    required this.consciousness,
    required this.bloodPressure,
    required this.urine,
    required this.celsius,
  });

  String id;
  String name;
  double hn;
  String bedNumber;
  String latestMonitor;
  double sumMEWs;
  double hr;
  double rr;
  double spO2;
  Consciousness consciousness;
  double bloodPressure;
  double urine;
  double celsius;
}


List<Patient> data = [
  Patient(
    id: "1",
    name: "นางสาวไอซ์ ศรีธัญญา", 
    hn: 30, 
    bedNumber: "0001", 
    latestMonitor: "26 กันยายน 2657\n13:30:45 นาฬิกา",
    sumMEWs: 12,
    hr: 20,
    rr: 15,
    spO2: 80,
    consciousness: Consciousness.pain,
    bloodPressure: 92,
    urine: 92,
    celsius: 10
  ),
  Patient(
    id: "2",
    name: "คุณหญิงภัสรา พิทักษ์ภูมิ", 
    hn: 30, 
    bedNumber: "0002", 
    latestMonitor: "25 กันยายน 2657\n14:30:45 นาฬิกา",
    sumMEWs: 12,
    hr: 20,
    rr: 15,
    spO2: 80,
    consciousness: Consciousness.pain,
    bloodPressure: 92,
    urine: 92,
    celsius: 10
  ),
  Patient(
    id: "3",
    name: "นายจอห์น จอห์นสตัน", 
    hn: 30, 
    bedNumber: "0003", 
    latestMonitor: "24 กันยายน 2657\n15:30:45 นาฬิกา",
    sumMEWs: 12,
    hr: 20,
    rr: 15,
    spO2: 80,
    consciousness: Consciousness.pain,
    bloodPressure: 92,
    urine: 92,
    celsius: 10
  ),
  
];
