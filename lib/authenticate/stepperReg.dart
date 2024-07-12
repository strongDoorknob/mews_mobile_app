// ignore_for_file: duplicate_import

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pulse/authenticate/done.dart';
import 'package:pulse/themes/color.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RegisterStepperPage extends StatefulWidget {
  const RegisterStepperPage({super.key});

  @override
  State<RegisterStepperPage> createState() => _RegisterStepperPageState();
}

class _RegisterStepperPageState extends State<RegisterStepperPage> {
  final _formKey = GlobalKey<FormState>();
  final _formKeyForMail = GlobalKey<FormState>();

  final _thName = TextEditingController();
  final _enName = TextEditingController();
  final _citizenId = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();

  List<String> validateErr = [];


  int _currentStep = 0;
  bool get isFirstStep => _currentStep == 0;
  bool get isLastStep => _currentStep == steps().length - 1;

  bool isComplete = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      resizeToAvoidBottomInset: false,
      body: isComplete ? const DonePage() : Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: BorderRadius.circular(25)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const FaIcon(FontAwesomeIcons.penToSquare, size: 40,),
                  const SizedBox(width: 5,),
                  Text(
                    "ลงทะเบียน",
                    style: GoogleFonts.inter(
                      fontSize: 40,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),

              Form(
                key: _formKey,
                child: Stepper(
                  steps: steps(), 
                  currentStep: _currentStep, 
                  onStepContinue: (){
                    if (isLastStep) {
                      setState(() => isComplete = true);
                    } else {
                      setState(() {
                        _currentStep += 1;
                      });
                    }
                  },
                  onStepCancel: isFirstStep ? null : () => setState(() => _currentStep -= 1),
                  onStepTapped: (step) => setState(() => _currentStep = step),
                  controlsBuilder: (context, details) => Padding(
                    padding: const EdgeInsets.only(top: 32),
                    child: Row(
                      children: [
                        Expanded(
                          child: _currentStep != 1 ?
                            FilledButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  details.onStepContinue!();
                                }
                              },
                              style: FilledButton.styleFrom(
                                foregroundColor: Colors.black,
                                backgroundColor: thirdColor,
                                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                                )
                              ),
                              child: Text(
                                isLastStep ? "ลงทะเบียน" : "ถัดไป",
                                style: GoogleFonts.inter(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                                ),
                              )
                            )
                          :
                          FilledButton(
                              onPressed: () {
                                if (_formKeyForMail.currentState!.validate()) {
                                  details.onStepContinue!();
                                }
                              },
                              style: FilledButton.styleFrom(
                                foregroundColor: Colors.black,
                                backgroundColor: thirdColor,
                                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                                )
                              ),
                              child: Text(
                                "ถัดไป",
                                style: GoogleFonts.inter(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                                ),
                              )
                            )
                        ),
                        if (!isFirstStep) ... [
                          const SizedBox(width: 16,),
                          Expanded(
                            child: FilledButton(
                              onPressed: isFirstStep ? null : details.onStepCancel,
                              style: FilledButton.styleFrom(
                                foregroundColor: Colors.black,
                                backgroundColor: thirdColor,
                                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: Text(
                                "กลับ",
                                style: GoogleFonts.inter(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                                ),
                              )
                            )
                          ),
                        ],
                      ],
                    ),
                  ),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "หรือ",
                    style: GoogleFonts.inter(),
                  ),
              
                  TextButton(
                    onPressed: (){}, 
                    style: TextButton.styleFrom(
                      foregroundColor: secondaryColor
                    ),
                    child: Text(
                      "เข้าสู่ระบบ",
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        color: Colors.black
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  List<Step> steps() => [
    Step(
      state: _currentStep > 0 ? StepState.complete : StepState.indexed,
      isActive: _currentStep >= 0,
      title: Text("ข้อมูลส่วนตัว" , style: GoogleFonts.inter(fontWeight: FontWeight.bold, fontSize: 20, decoration: TextDecoration.underline)),
      content: Column(
        children: [
          TextFormField(
            controller: _thName,
            decoration: const InputDecoration(labelText: "ชื่อเต็มภาษาไทย"),
            keyboardType: TextInputType.text,
            validator: (value) {
              if (value==null || value.isEmpty){
                return "กรุณาป้อนชื่อภาษาไทย";
              }
              return null;
            },
          ),
          TextFormField(
            controller: _enName,
            decoration: const InputDecoration(labelText: "ชื่อเต็มภาษาอังกฤษ"),
            keyboardType: TextInputType.text,
            validator: (value) {
              if (value==null || value.isEmpty){
                return "กรุณาป้อนชื่อภาษาอังกฤษ";
              }
              return null;
            },
          ),
          TextFormField(
            controller: _password,
            decoration: const InputDecoration(labelText: "รหัสผ่าน"),
            keyboardType: TextInputType.visiblePassword,
            validator: (value) {
              if (value==null || value.isEmpty){
                return "กรุณาป้อนรหัสผ่าน";
              }
              return null;
            },
          ),
          TextFormField(
            controller: _citizenId,
            decoration: const InputDecoration(labelText: "เลขบัตรประชาชน"),
            keyboardType: TextInputType.text,
            validator: (value) {
              if (value==null || value.isEmpty || value.length != 13){
                return "กรุณาป้อนเลขบัตรประจำตัวประชาชนให้ถูกต้อง";
              }
              return null;
            },
          ),
        ],
      )
    ),
    Step(
      state: _currentStep > 1 ? StepState.complete : StepState.indexed,
      isActive: _currentStep >= 1,
      title: Text("ช่องทางการติดต่อ", style: GoogleFonts.inter(fontWeight: FontWeight.bold, fontSize: 20, decoration: TextDecoration.underline)), 
      content: Column(
        children: [
          Form(
            key: _formKeyForMail,
            child: TextFormField(
              controller: _email,
              decoration: const InputDecoration(labelText: "อีเมลล์"),
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value==null || value.isEmpty){
                  return "กรุณาป้อนอีเมลล์";
                }
                return null;
              },
            ),
          )
        ],
      )
    ),
    Step(
      isActive: _currentStep >= 2,
      title: Text("ยืนยันข้อมูล", style: GoogleFonts.inter(fontWeight: FontWeight.bold, fontSize: 20, decoration: TextDecoration.underline)), 
      content: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("ชื่อภาษาไทย", style: GoogleFonts.inter(fontWeight: FontWeight.bold, fontSize: 16)),
              Text(_thName.text, style: GoogleFonts.inter(fontSize: 16)),
              Text("ชื่อภาษาอังกฤษ", style: GoogleFonts.inter(fontWeight: FontWeight.bold, fontSize: 16)),
              Text(_enName.text, style: GoogleFonts.inter(fontSize: 16)),
              Text("เลขบัตร ปชช.", style: GoogleFonts.inter(fontWeight: FontWeight.bold, fontSize: 16)),
              Text(_citizenId.text, style: GoogleFonts.inter(fontSize: 16)),
              Text("รหัสผ่าน", style: GoogleFonts.inter(fontWeight: FontWeight.bold, fontSize: 16)),
              Text(_password.text, style: GoogleFonts.inter(fontSize: 16)),
              Text("อีเมลล์", style: GoogleFonts.inter(fontWeight: FontWeight.bold, fontSize: 16)),
              Text(_email.text, style: GoogleFonts.inter(fontSize: 16))
            ],
          ),
        ],
      )
    ),
  ];
}