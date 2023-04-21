import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../consts/colors.dart';

class Cancelled extends StatelessWidget {
  Cancelled({super.key});

  final _docsname = [
    'Dr. doctor-4',
  ];
  final _designation = ['Physician'];
  final dates = [
    '19-04-23',
  ];
  final times = [
    '4:30 PM',
  ];
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Container(
          height: screenHeight * 0.7,
          child: ListView.builder(
            itemCount: 1,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 15),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.grey,
                                offset: Offset(2, 2),
                                blurRadius: 1,
                                spreadRadius: 2),
                          ]),
                      child: SizedBox(
                        width: screenWidth,
                        child: Column(
                          children: [
                            ListTile(
                              title: Text(
                                _docsname[index],
                                style: GoogleFonts.notoSerif(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                              ),
                              subtitle: Text(
                                _designation[index],
                                style: GoogleFonts.notoSerif(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                ),
                              ),
                              trailing: const CircleAvatar(
                                radius: 25,
                                backgroundImage: AssetImage('assets/doc-0.jpg'),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              child: Divider(
                                color: Colors.grey,
                                thickness: 1,
                                height: 20,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 15),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.calendar_month_rounded,
                                        color: AppColors.fontColor,
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        dates[index],
                                        style: const TextStyle(
                                            color: AppColors.fontColor),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.access_time_filled_rounded,
                                        color: AppColors.fontColor,
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        times[index],
                                        style: const TextStyle(
                                            color: AppColors.fontColor),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.cancel,
                                        color: Colors.red,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        'Canceled',
                                        style: TextStyle(
                                            color: AppColors.fontColor),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      )),
                ],
              );
            },
          )),
    );
  }
}
