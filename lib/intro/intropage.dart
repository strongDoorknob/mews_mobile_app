import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_slider/introduction_slider.dart';
import 'package:pulse/intro/authenticate/intro.dart';
import 'package:pulse/intro/intropage/firstpage.dart';
import 'package:pulse/intro/intropage/forthpage.dart';
import 'package:pulse/intro/intropage/secondpage.dart';
import 'package:pulse/intro/intropage/thirdpage.dart';
import 'package:pulse/themes/color.dart';

class IntroSliderPage extends StatelessWidget {
  const IntroSliderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionSlider(
      items: [
        IntroductionSliderItem(
          subtitle: const FirstPage(),
          backgroundImageDecoration: BackgroundImageDecoration(
            image: const AssetImage("assets/images/image_part_001.jpg"),
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.6),
              BlendMode.darken,
            ),
            fit: BoxFit.cover,
            opacity: 1.0,
          )
        ),
        IntroductionSliderItem(
          subtitle: const SecondPage(),
          backgroundImageDecoration: BackgroundImageDecoration(
            image: const AssetImage("assets/images/image_part_002.jpg"),
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.6),
              BlendMode.darken,
            ),
            fit: BoxFit.cover,
            opacity: 1.0,
          )
        ),
        IntroductionSliderItem(
          subtitle: const ThirdPage(),
          backgroundImageDecoration: BackgroundImageDecoration(
            image: const AssetImage("assets/images/image_part_003.jpg"),
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.6),
              BlendMode.darken,
            ),
            fit: BoxFit.cover,
            opacity: 1.0,
          )
        ),
        IntroductionSliderItem(
          subtitle: const ForthPage(),
          backgroundImageDecoration: BackgroundImageDecoration(
            image: const AssetImage("assets/images/image_part_004.jpg"),
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.6),
              BlendMode.darken,
            ),
            fit: BoxFit.cover,
            opacity: 1.0,
          )
        ),
      ],
      done: Done(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          margin: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: BorderRadius.circular(20)
          ),
          child: Row(
            children: [
              const Icon(Icons.done, color: Colors.black, size: 20,),
              const SizedBox(width: 2,),
              Text(
                "เข้าสู่ระบบ",
                style: GoogleFonts.cabin(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                )
              ),
            ],
          ),
        ),
        home: const IntroAuth()
      ),
      next: Next(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          margin: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: BorderRadius.circular(20)
          ),
          child: Row(
            children: [
              Text(
                "ต่อไป",
                style: GoogleFonts.cabin(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                )
              ),
              const SizedBox(width: 2,),
              const Icon(Icons.arrow_forward, color: Colors.black, size: 20,),
            ],
          ),
        )
      ),
    );
  }
}
