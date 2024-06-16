import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pulse/themes/color.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryColor,
        body: Stack(
          children: [
            Positioned(
              top: 100,
              left: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                
                children: [
                  Container(
                    // color: const Color.fromARGB(255, 160, 160, 160).withOpacity(0.75),
                    decoration: BoxDecoration(
                      color: thirdColor.withOpacity(0.75),
                      borderRadius: BorderRadius.circular(150)
                    ),
                    width: 1080,
                    height: 700,
                  )
                ],
              ),
            ),
            
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  height: 250,
                ),
            
                //Logo
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
            
                const SizedBox(height: 40,),
                //Text
                Text(
                  "Pulse",
                  style: GoogleFonts.cabin(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3
                  )
                ),
                const SizedBox(height: 15,),
                //Text
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 0),
                  child: Center(
                    child: Text(
                      "ยินดีต้อนรับเข้าสู่เครื่องมือดิจิทัลที่จะ\nช่วยอำนวยสะดวกการทำงานของคุณ",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.cabin(
                        fontSize: 20,
                      )
                    ),
                  ),
                ),
            
                //button
                const SizedBox(height: 75,),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 50, 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: 150,
                        child: FilledButton(
                          onPressed: (){}, 
                          style: FilledButton.styleFrom(
                            backgroundColor: secondaryColor,
                            padding: const EdgeInsets.all(10),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                            )
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "ต่อไป",
                                style: GoogleFonts.cabin(
                                  fontSize: 24,
                                  color: Colors.black
                                )
                              ),
                              const SizedBox(width: 7,),
                              const Icon(Icons.arrow_forward, color: Colors.black, size: 20,),
                            ],
                          )
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            
          ],
        ));
  }
}