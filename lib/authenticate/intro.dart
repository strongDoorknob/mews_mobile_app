import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pulse/themes/color.dart';
import 'package:pulse/themes/components/mybutton.dart';

class IntroAuth extends StatefulWidget {
  const IntroAuth({super.key});

  @override
  State<IntroAuth> createState() => _IntroAuthState();
}

class _IntroAuthState extends State<IntroAuth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Container(
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
            ),

            const SizedBox(height: 50,),

            Text(
              "ยังไม่มีบัญชีเหรอ?",
              style: GoogleFonts.inter(
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),
            ),

            const SizedBox(height: 40,),

            MyButton(text: "ลงทะเบียนเลย", onTap: (){}),

            Container(
              padding: const EdgeInsets.fromLTRB(0, 10, 105, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
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
              ),
            )
          ],
        ),
      ),
      
    );
  }
}