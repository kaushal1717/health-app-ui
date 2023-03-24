import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthapp/consts/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List symptoms = ["Temprature", "Snuffle", "Fever", "Cough", "Cold"];

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hello, User',
                    style: GoogleFonts.ubuntu(
                        fontSize: 34, fontWeight: FontWeight.w600),
                  ),
                  CircleAvatar(
                    radius: 24,
                    backgroundImage: AssetImage('assets/doc-1.jpg'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenHeight * 0.025,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: AppColors.primColor,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(4, 4),
                            blurRadius: 15,
                            spreadRadius: 1,
                          ),
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset(-4, -4),
                            blurRadius: 15,
                            spreadRadius: 1,
                          )
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: AppColors.secColor,
                            shape: BoxShape.circle,
                          ),
                          child: Container(
                            child: Icon(
                              Icons.add,
                              color: AppColors.primColor,
                              size: 25,
                            ),
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.03),
                        Text(
                          'Clinic visit',
                          style: GoogleFonts.notoSerif(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
