import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pulse/themes/color.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Center(
          child: Container(
            height: 250,
            width: 250,
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
          )
        ),
    
        const SizedBox(height: 10,),
    
        Text(
          "Pulse",
          style: GoogleFonts.inter(
            fontSize: 50,
            fontWeight: FontWeight.bold,
            letterSpacing: 3,
            color: primaryColor
          )
        ),
    
        const SizedBox(height: 40,),
    
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 0),
          child: Center(
            child: Text(
              "ยินดีต้อนรับเข้าสู่เครื่องมือดิจิทัลที่จะ\nช่วยอำนวยสะดวกงานพยาบาลของคุณ",
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