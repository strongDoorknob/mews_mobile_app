import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pulse/themes/color.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Center(
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              border: Border.all(
                color: Colors.black,
                width: 3,
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                "assets/images/Care.jpg",
                height: 500,
                width: 500,
                fit: BoxFit.cover,
              ),
            ),
          )
        ),
    
        const SizedBox(height: 10,),
    
        
        Text(
          "สัญญาณเตือน\nสภาวะวิกฤติ",
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
              "ประเมินความเสี่ยงของผู้ป่วยแผนกฉุกเฉินด้วยระบบ สัญญาณเตือนสภาวะวิกฤติ (Modified Early Warning Score)",
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