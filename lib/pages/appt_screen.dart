import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthapp/consts/colors.dart';
import 'package:healthapp/widgets/buttons.dart';

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
                  Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 20),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.account_circle,
                            size: 65,
                          ),
                          Text(
                            'Doctor name',
                            style: GoogleFonts.notoSans(
                                fontSize: 25,
                                color: AppColors.secColor,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'Designation',
                            style: GoogleFonts.notoSans(
                              color: AppColors.secColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: screenHeight * 0.005,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromARGB(255, 195, 138, 142),
                                ),
                                child: Icon(
                                  Icons.call,
                                  size: 22,
                                ),
                              ),
                              SizedBox(width: screenWidth * 0.06),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromARGB(255, 195, 138, 142),
                                ),
                                child: Icon(
                                  Icons.chat_bubble,
                                  size: 22,
                                ),
                              ),
                            ],
                          )
                        ]),
                  ),
                ],
              ),
            ),
            Container(
              height: screenHeight / 1.5,
              width: double.infinity,
              padding: EdgeInsets.only(top: 20, left: 15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  )),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About Doctor',
                    style: GoogleFonts.notoSerif(
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                        color: AppColors.fontColor),
                  ),
                  SizedBox(
                    height: screenHeight * 0.015,
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod ipsum vel risus consequat.',
                    style: GoogleFonts.notoSans(),
                  ),
                  SizedBox(
                    height: screenHeight * 0.0175,
                  ),
                  Row(
                    children: [
                      Text(
                        'Reviews',
                        style: GoogleFonts.notoSerif(
                            fontSize: 17,
                            color: AppColors.fontColor,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        width: screenWidth * 0.015,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      Text(
                        ' 4.7',
                        style: GoogleFonts.notoSerif(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: AppColors.fontColor),
                      ),
                      SizedBox(
                        width: screenWidth * 0.03,
                      ),
                      Text(
                        '(126)',
                        style: GoogleFonts.notoSerif(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: AppColors.fontColor),
                      ),
                      SizedBox(
                        width: screenWidth * 0.37,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          'See all',
                          style: GoogleFonts.notoSerif(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 224, 151, 156)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                      height: screenHeight * 0.2,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            String ind = index.toString();
                            return Container(
                              margin: EdgeInsets.only(
                                  top: 10, right: 15, bottom: 10, left: 5),
                              decoration: BoxDecoration(
                                  color: AppColors.secColor,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 4,
                                        spreadRadius: 2)
                                  ]),
                              child: SizedBox(
                                width: screenWidth * 0.7,
                                child: Column(
                                  children: [
                                    ListTile(
                                      leading: CircleAvatar(
                                        radius: 20,
                                        backgroundImage: AssetImage(
                                            'assets/person-$ind.jpeg'),
                                      ),
                                      title: Text(
                                        'User $index',
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.notoSans(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                      subtitle: Text(
                                        'x days ago',
                                        textAlign: TextAlign.justify,
                                        style: TextStyle(fontSize: 10),
                                      ),
                                      trailing: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                            size: 20,
                                          ),
                                          Text(
                                            '4',
                                            style: TextStyle(fontSize: 20),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(
                                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          })),
                  Text(
                    'Location',
                    style: GoogleFonts.notoSerif(
                        fontWeight: FontWeight.w600,
                        color: AppColors.fontColor,
                        fontSize: 20),
                  ),
                  ListTile(
                    leading: Container(
                      child: Icon(
                        Icons.location_on,
                        color: AppColors.primColor,
                        size: 30,
                      ),
                    ),
                    title: Text(
                      'Surat, Gujarat',
                      style: GoogleFonts.notoSans(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text('Address line'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(15),
        height: 140,
        decoration: BoxDecoration(color: AppColors.secColor, boxShadow: [
          BoxShadow(blurRadius: 4, spreadRadius: 4, offset: Offset(4, 4))
        ]),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Consulancy fees',
                  style: GoogleFonts.chivo(
                    fontWeight: FontWeight.w600,
                    color: AppColors.fontColor,
                  ),
                ),
                Text(
                  '₹ 800',
                  style: TextStyle(
                    color: AppColors.fontColor,
                  ),
                )
              ],
            ),
            SizedBox(
              height: screenHeight * 0.03,
            ),
            CustomButton(
              onpressed: () {},
              child: Text(
                'Book appointment',
                style: TextStyle(
                    color: AppColors.secColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              ),
              width: double.infinity,
            )
          ],
        ),
      ),
    );
  }
}
