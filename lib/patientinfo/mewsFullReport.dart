// ignore_for_file: file_names, unused_import

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pulse/models/patientData.dart';
import 'package:pulse/patientinfo/indMewsDetail.dart';
import 'package:pulse/models/headerRow.dart';
import 'package:pulse/themes/color.dart';

class FullReport extends StatefulWidget {
  const FullReport({super.key});

  @override
  State<FullReport> createState() => _FullReportState();
  
}

class _FullReportState extends State<FullReport> {
  int currentPage = 1;
  int length = 15;
  double totalRow = 87;
  TableRow buildTableHeadRow(int numberOfCells) {
    // List to hold TableCell widgets
    List<TableCell> cells = [];

    // Create TableCell widgets in a loop
    for (int i = 0; i < numberOfCells; i++) {
      TableCell cell = TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Text(headerName[i]),
        ),
      );
      cells.add(cell);
    }

    // Return the built TableRow widget
    return TableRow(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 215, 229, 202),
      ),
      children: cells,
    );
  }

  @override
  Widget build(BuildContext context) {
    // bool currentPage = 1;
    List<String> pageNumList = List<String>.generate((totalRow ~/ length) + 1, (index) => (index + 1).toString());
    String maxNumber = pageNumList.reduce((currentMax, next) => int.parse(currentMax) > int.parse(next) ? currentMax : next);
    return  
      Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: SizedBox(
              // color: secondaryColor,
              width: 950,
              // height: ,
              child: Table(
                border: const TableBorder.symmetric(
                  inside: BorderSide(),
                  outside: BorderSide(),
                  borderRadius: BorderRadius.zero
                ),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  buildTableHeadRow(10),
                  ...List.generate(
                    currentPage != int.parse(maxNumber) ? length : totalRow.toInt() - ((int.parse(maxNumber) - 1) * length), 
                    (index) => TableRow(
                      children: List.generate(
                        10, // Number of cells per row
                        (cellIndex) => TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Text("cell ${((currentPage - 1) * 15) + 1 + index}-$cellIndex"), // Replace with actual cell data
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ),
          ),

          const SizedBox(height: 10,),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              currentPage != 1 ? 
              ElevatedButton(
                onPressed: (){
                  setState(() {
                    currentPage -= 1;
                  });
                }, 
                style: ElevatedButton.styleFrom(
                  backgroundColor: secondaryColor,
                  foregroundColor: forthColor,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0)
                  )
                ),
                child: Text(
                  "ก่อนหน้า",
                  style: GoogleFonts.inter(),
                )
              ) 
              : 
              const SizedBox()
              
              ,
              const SizedBox(width: 30,),
              DropdownButton(
                value: currentPage.toString(),
                elevation: 16, // Set the elevation of the dropdown
                style: TextStyle(color: forthColor), // Text style for the selected item
                underline: Container( // Customize the underline of the dropdown button
                  height: 2,
                  color: forthColor,
                ),
                items: pageNumList.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (value){
                  setState(() {
                    currentPage = value! as int;
                  });
                },
              ),
              const SizedBox(width: 30,),
              
              currentPage != int.parse(maxNumber) ? 
              ElevatedButton(
                onPressed: (){
                  setState(() {
                    currentPage += 1;
                  });
                }, 
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  backgroundColor: secondaryColor,
                  foregroundColor: forthColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0)
                  )
                ),
                child: Text("ถัดไป", style: GoogleFonts.inter(),)
              )
              :
              const SizedBox(),
            ],
          ),

          const SizedBox(height: 10,),
        ],
      );
    // );
  }
  
}