import 'package:flutter/material.dart';
import 'package:healthapp/pages/Message/chat_sample.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          leadingWidth: 30,
          title: Padding(
            padding: const EdgeInsets.only(left: 7),
            child: Row(
              children: const [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/doc-0.jpg'),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 14),
                  child: Text(
                    'Dr. Doctor 0',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.call_outlined)),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.video_call_outlined),
            ),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.more_vert_outlined))
          ],
        ),
      ),
      body: ListView.builder(
          itemCount: 1,
          padding:
              const EdgeInsets.only(top: 20, right: 15, bottom: 80, left: 15),
          itemBuilder: ((context, index) => const ChatSample())),
      bottomSheet: Container(
          height: 65,
          decoration: const BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(color: Colors.grey, spreadRadius: 2, blurRadius: 10)
          ]),
          child: Row(children: [
            const Padding(
              padding: EdgeInsets.only(left: 8),
              child: Icon(
                Icons.add,
                size: 30,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 5),
              child: Icon(Icons.emoji_emotions_outlined, color: Colors.black),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                alignment: Alignment.centerRight,
                width: screenWidth * 0.8,
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Type Something',
                    border: InputBorder.none,
                    suffixIcon: Icon(
                      Icons.send,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            const Spacer(),
          ])),
    );
  }
}
