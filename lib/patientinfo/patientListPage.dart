import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pulse/models/patientData.dart';
import 'package:pulse/patientinfo/indMewsDetail.dart';
import 'package:pulse/themes/color.dart';

class Patientlistpage extends StatefulWidget {
  const Patientlistpage({super.key});

  @override
  State<Patientlistpage> createState() => _PatientlistpageState();
}

class _PatientlistpageState extends State<Patientlistpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          // Replace Header() with your desired header widget or implementation
          AppBar(
            title: Text(
              "รายชื่อผู้ป่วยที่ทำการเฝ้าระวัง",
              style: GoogleFonts.inter(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            backgroundColor: secondaryColor, // Change the background color as needed
            centerTitle: true,
            actions: [
              IconButton(
                onPressed: () {
                  // Implement any action you want here
                },
                icon: Icon(Icons.settings),
              ),
            ],
          ),
          const SizedBox(height: 60),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "รายชื่อผู้ป่วยที่ทำการเฝ้าระวัง",
                  style: GoogleFonts.inter(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Form(
                  child: SearchAnchor(
                    builder: (BuildContext context, SearchController controller) {
                      return SearchBar(
                        controller: controller,
                        padding: const WidgetStatePropertyAll<EdgeInsets>(EdgeInsets.symmetric(horizontal: 10)),
                        onTap: () {
                          controller.openView();
                        },
                        onChanged: (_) {
                          controller.openView();
                        },
                        leading: const Icon(Icons.search, size: 30),
                        shape: WidgetStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        elevation: WidgetStateProperty.all(0),
                        backgroundColor: WidgetStateProperty.all(secondaryColor), // Background color
                      );
                    },
                    suggestionsBuilder: (BuildContext context, SearchController controller) {
                      return List<ListTile>.generate(5, (int index) {
                        final String item = 'คนไข้คนที่ $index';
                        return ListTile(
                          title: Text(item),
                          onTap: () {
                            setState(() {
                              controller.closeView(item);
                            });
                          },
                        );
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: secondaryColor,
              ),
              height: 600,
              child: Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: ListView.builder(
                        itemCount: data.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 10),
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: const BoxDecoration(
                              border: BorderDirectional(bottom: BorderSide()),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "${data[index].id}. ${data[index].name}",
                                  style: GoogleFonts.inter(
                                    textStyle: const TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const PatientMewsDetail()),
                                    );
                                  },
                                  icon: const FaIcon(FontAwesomeIcons.magnifyingGlassArrowRight, size: 20),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
