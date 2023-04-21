import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthapp/pages/Message/chatscreen.dart';

class MsgPage extends StatelessWidget {
  MsgPage({super.key});

  final List _docImages = [
    'doc-0.jpg',
    'doc-1.jpg',
    'doc-2.jpg',
    'doc-3.jpg',
    'doc-2.jpg',
    'doc-0.jpg',
  ];
  final List _imgs = [
    'doc-0.jpg',
    'doc-1.jpg',
    'doc-2.jpg',
    'doc-3.jpg',
  ];
  final List _docTexts = [
    "I'm having severe headache",
    'Hello doctor',
    'Thanks doctor',
    'Thanks for consulting 😊',
  ];
  final List _timings = [
    '10:30 AM',
    '4:30 PM',
    '6:56 PM',
    '7:00 PM',
  ];
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 25),
            child: Text(
              'Message',
              style:
                  GoogleFonts.ubuntu(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          SizedBox(height: screenHeight * 0.02),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.grey, blurRadius: 4, spreadRadius: 1)
                  ]),
              child: Container(
                width: screenWidth * 0.9,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: TextFormField(
                    cursorHeight: 18,
                    textAlignVertical: TextAlignVertical.center,
                    decoration: const InputDecoration(
                        hintText: 'Search',
                        hintStyle: TextStyle(
                          fontSize: 20,
                        ),
                        suffixIcon: Icon(Icons.search),
                        border: InputBorder.none),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: screenHeight * 0.02,
          ),
          Container(
            margin: const EdgeInsets.only(left: 15),
            child: Text(
              'Active Now',
              style: GoogleFonts.notoSerif(
                  fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: screenHeight * 0.1,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    margin:
                        const EdgeInsets.only(top: 10, left: 10, bottom: 10),
                    width: 65,
                    height: 65,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 10,
                            spreadRadius: 2,
                          ),
                        ]),
                    child: Stack(
                      textDirection: TextDirection.rtl,
                      children: [
                        Center(
                          child: Container(
                            height: 65,
                            width: 65,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image.asset(
                                'assets/${_docImages[index]}',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(2),
                          padding: const EdgeInsets.all(3),
                          width: 20,
                          height: 20,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Container(
                            decoration: const BoxDecoration(
                                color: Colors.green, shape: BoxShape.circle),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 15),
            child: Text(
              'Recent Chats',
              style: GoogleFonts.notoSerif(
                  fontWeight: FontWeight.bold, fontSize: 17),
            ),
          ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 4,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ChatScreen()));
                },
                leading: CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('assets/${_imgs[index]}'),
                ),
                title: Text(
                  'Dr. Doctor $index',
                  style: GoogleFonts.notoSans(
                      fontWeight: FontWeight.bold, fontSize: 18),
                ),
                subtitle: Text(_docTexts[index],
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: GoogleFonts.notoSans()),
                trailing: Text(_timings[index]),
              );
            },
          ),
        ],
      ),
    );
  }
}
