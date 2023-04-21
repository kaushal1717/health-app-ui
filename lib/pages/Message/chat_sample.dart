import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';
import 'package:healthapp/consts/colors.dart';

class ChatSample extends StatelessWidget {
  const ChatSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 200),
            child: ClipPath(
              clipper: LowerNipMessageClipper(MessageType.send),
              child: Container(
                padding: const EdgeInsets.only(
                    left: 20, top: 10, bottom: 25, right: 20),
                decoration: const BoxDecoration(color: AppColors.primColor),
                child: const Text('Hello Doctor, are you there?'),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 80),
          child: ClipPath(
            clipper: UpperNipMessageClipper(MessageType.receive),
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(color: Color(0Xffe1e1e2)),
              child: const Text(
                'Hello, what can I do for you, you can book appointments directly',
                style: TextStyle(fontSize: 14),
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 200),
            child: ClipPath(
              clipper: LowerNipMessageClipper(MessageType.send),
              child: Container(
                padding: const EdgeInsets.only(
                    left: 20, top: 10, bottom: 25, right: 20),
                decoration: const BoxDecoration(color: AppColors.primColor),
                child: const Text("I'm having severe headache"),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
