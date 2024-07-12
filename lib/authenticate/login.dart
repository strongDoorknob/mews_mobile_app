// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pulse/authenticate/done.dart';
import 'package:pulse/themes/color.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  String _citizenId = "";
  String _password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Container(
          width: 350,
          height: 400,
          padding: const EdgeInsets.symmetric(vertical: 20),
          decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: BorderRadius.circular(25)
          ),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(125),
                        border: Border.all(
                          color: Colors.white60,
                          width: 2,
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(125),
                        child: Image.asset(
                          "assets/images/Logo.jpg",
                          height: 250,
                          width: 250,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                            
                    const SizedBox(width: 20,),
                            
                    Text(
                      "เข้าสู่ระบบ",
                      style: GoogleFonts.inter(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
            
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black), // Change border color when focused
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black), // Change border color when enabled but not focused
                          ),
                          labelText: "เลขประจำตัวประชาชน",
                          labelStyle: TextStyle(color:Colors.black),
                        ),
                        validator: (value) {
                          if (value==null || value.isEmpty || value.length != 13){
                            return "กรุณาป้อนเลขบัตรประจำตัวประชาชนให้ถูกต้อง";
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _citizenId = value!;
                        },
                      ),
                    ),
                
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                      child: TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black), // Change border color when focused
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black), // Change border color when enabled but not focused
                          ),
                          labelText: "รหัสผ่าน",
                          labelStyle: TextStyle(color:Colors.black),
                        ),
                        validator: (value) {
                          if (value==null || value.isEmpty){
                            return "กรุณาป้อนรหัสผ่าน";
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _password = value!;
                        },
                      ),
                    ),
                
                  ],
                ),
            
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FilledButton(
                      onPressed: (){
                        _formKey.currentState!.validate();
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => const DonePage())
                        );
                      }, 
                      style: FilledButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: thirdColor,
                        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                        )
                      ),
                      child: Text(
                        "เข้าสู่ระบบ",
                        style: GoogleFonts.inter(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),
                      )
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
                            "ลงทะเบียน",
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}