import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pulse/themes/color.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Center(
          child: Container(
            height: 200,
            width: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              border: Border.all(
                color: Colors.white60,
                width: 2,
              ),
              color: secondaryColor
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.asset(
                "assets/images/smartphone.png",
                height: 200,
                width: 350,
                fit: BoxFit.cover,
              ),
            ),
          )
        ),
    
        const SizedBox(height: 10,),
    
        
        Text(
          "ประยุกต์ใช้กับแอพพลิเคชัน",
          textAlign: TextAlign.center,
          style: GoogleFonts.inter(
            fontSize: 50,
            fontWeight: FontWeight.bold,
            color: primaryColor
          )
        ),

    
        const SizedBox(height: 30,),
    
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 0),
          child: Center(
            child: Text(
              "เราประยุกต์การประเมินความเสี่ยงผู้ป่วย MEWs มาเป็นเครื่องมืออันเข้าถึงได้เพียงปลายนิ้ว",
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                fontSize: 20,
                color: primaryColor
              )
            ),
          ),
        ),
      ],
    );
  }
}