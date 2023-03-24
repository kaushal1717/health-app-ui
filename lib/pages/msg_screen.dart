import 'package:flutter/material.dart';

class MsgPage extends StatefulWidget {
  const MsgPage({super.key});

  @override
  State<MsgPage> createState() => _MsgPageState();
}

class _MsgPageState extends State<MsgPage> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Container(
        child: Center(child: Text("Msg Scrrrr")),
      ),
    );
  }
}
