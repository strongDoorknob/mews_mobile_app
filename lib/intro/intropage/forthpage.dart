import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pulse/themes/color.dart';

class ForthPage extends StatelessWidget {
  const ForthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(175),
          child: Image.asset(
            "assets/images/TUHospital.jpeg",
            width: 250,
            height: 250,
          ),
        ),

        Text(
          "พัฒนาให้",
          textAlign: TextAlign.center,
          style: GoogleFonts.inter(
            fontSize: 50,
            fontWeight: FontWeight.bold,
            color: primaryColor
          ),
        ),

        const SizedBox(height: 30,),

        Container(
          margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Text(
            "โครงงานนี้ถูกพัฒนาให้บุคคลากรทางการแพทย์ประจำโรงพยาบาลธรรมศาสตร์เฉลิมพระเกียรติ โดยนักศึกษาหลักสูตร TU-Pine คณะวิศวกรรมศาสตร์มหาวิทยาลัยธรรมศาสตร์",
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontSize: 20,
              color: primaryColor
            ),
          ),
        ),
      ],
    );
  }
}