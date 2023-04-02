import 'package:flutter/material.dart';
import 'package:healthapp/consts/colors.dart';

class AppointPage extends StatelessWidget {
  const AppointPage({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.primColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: screenHeight * 0.039),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: AppColors.secColor,
                          size: 25,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.more_vert,
                          color: AppColors.secColor,
                          size: 25,
                        ),
                      )
                    ],
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 10))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
