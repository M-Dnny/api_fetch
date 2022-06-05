import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  Screen2({Key? key, this.radioParam}) : super(key: key);

  String? radioParam = "";

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Radio Btn PARAMs"),
            Text(widget.radioParam.toString()),
          ],
        ),
      ),
    );
  }
}
