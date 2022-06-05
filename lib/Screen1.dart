import 'package:api_fetch/screen2.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => Screen1State();
}

class Screen1State extends State<Screen1> {
  String? gender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Radio Buttons"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Radio Buttons"),
            ListTile(
              title: const Text("Male"),
              leading: Radio(
                value: 'male',
                groupValue: gender,
                onChanged: (value) {
                  setState(() {
                    gender = value.toString();
                    print(value.toString());
                  });
                },
              ),
            ),
            ListTile(
              title: const Text("Female"),
              leading: Radio(
                value: 'female',
                groupValue: gender,
                onChanged: (value) {
                  setState(() {
                    gender = value.toString();
                    print(value.toString());
                  });
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Screen2(
                            radioParam: gender,
                          )),
                );
              },
              child: const Text("NAVIGATE"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'filePicker');
              },
              child: const Text("NAVIGATE TO FILE PICKER"),
            )
          ],
        ),
      ),
    );
  }
}
