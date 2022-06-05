import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class FilePciker extends StatefulWidget {
  const FilePciker({
    Key? key,
  }) : super(key: key);

  @override
  State<FilePciker> createState() => _FilePcikerState();
}

class _FilePcikerState extends State<FilePciker> {
  var docs = '';

  @override
  Widget build(BuildContext context) {
    filePick() async {
      FilePickerResult? result = await FilePicker.platform.pickFiles();

      if (result != null) {
        final file = result.files.single;
        // File file = File(result.files.single.path);
        print('file.bytes');
        print(file.path);

        setState(() {
          docs = file.path.toString();
        });
      } else {
        // User canceled the picker
      }
    }

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "File Picker",
              style: Theme.of(context).textTheme.displayLarge,
            ),
            ElevatedButton(
              onPressed: () {
                filePick();
              },
              child: Text(
                "Pick File",
                style: Theme.of(context).textTheme.displayMedium,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                uploadData();
              },
              child: Text(
                "UPLOAD DATA",
                style: Theme.of(context).textTheme.displaySmall,
              ),
            ),
            Text(
              docs,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }

  uploadData() async {
    const url = "http://161.97.138.56:3021/register/farmer";

    Response response;
    var dio = Dio();

    var formData = FormData.fromMap({
      'name': 'Guten',
      'email_id': 'gutem@gmail.com',
      'password': '12345',
      'mobile_no': '8928729008',
      'gender': 'male',
      'address': '205, gangsta vihar, tirupati colony, new delhi - 4000001',
      'role': 'Farmer',
      'bank_name': 'SBI',
      'bank_ifsc': 'SBIN00256',
      'bank_account_number': '0225555468921',
      'bank_branch_name': 'SAROVAR VIHAR',
      'bank_branch_address': 'SAROVAR VIHAR NEW DELHI',
      'document_one': await MultipartFile.fromFile(docs),
      'document_two': await MultipartFile.fromFile(docs),
      'state_id': 5,
      'district_id': 4,
      'City_id': 14,
      'pincode_id': 4000010
    });

    response = await dio.post(url, data: formData);
    print(response.data.toString());
  }
}
