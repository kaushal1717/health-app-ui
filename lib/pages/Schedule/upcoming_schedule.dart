import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../consts/colors.dart';
import '../../widgets/buttons.dart';

class Upcoming extends StatelessWidget {
  Upcoming({super.key});

  @override
  final _docsname = [
    'Dr. doctor-1',
    'Dr. doctor-2',
  ];
  final _designation = [
    'Physician',
    'Neurologist',
  ];
  final dates = [
    '20-04-23',
    '02-05-23',
  ];
  final times = [
    '4:30 PM',
    '7:30 PM',
  ];
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Container(
          height: screenHeight * 0.7,
          child: ListView.builder(
            itemCount: 2,
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
                                blurRadius: 2,
                                spreadRadius: 4),
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
                              trailing: CircleAvatar(
                                radius: 25,
                                backgroundImage:
                                    AssetImage('assets/doc-$index.jpg'),
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
                                    children: [
                                      Container(
                                          padding: const EdgeInsets.all(5),
                                          decoration: const BoxDecoration(
                                              color: Colors.green,
                                              shape: BoxShape.circle)),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      const Text(
                                        'Confirmed',
                                        style: TextStyle(
                                            color: AppColors.fontColor),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(bottom: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  CustomButton(
                                    onpressed: () {},
                                    color: AppColors.primColor,
                                    child: const Text(
                                      'Reschedule',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  CustomButton(
                                    onpressed: () {},
                                    color: Colors.grey.shade200,
                                    child: const Text(
                                      'Cancel',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
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
