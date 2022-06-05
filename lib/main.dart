import 'package:api_fetch/Screen1.dart';
import 'package:api_fetch/characterModel.dart';
import 'package:api_fetch/data_model/data_model.dart';
import 'package:api_fetch/data_model/result.dart';
import 'package:api_fetch/getCharacter.dart';
import 'package:api_fetch/screen2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          useMaterial3: true,
          primarySwatch: Colors.indigo,
          appBarTheme: AppBarTheme(backgroundColor: Colors.cyanAccent),
          primaryColor: Colors.deepPurple,
          scaffoldBackgroundColor: Colors.greenAccent),

      initialRoute: '/',

      routes: {
        '/': (context) => const Screen1(),
        'second': (context) => Screen2(),
      },

      // home: Scaffold(
      //   appBar: AppBar(
      //     title: Text("Flutter App"),
      //   ),
      //   // body: Screen1(),
      // ),
      // home: Scaffold(
      //   body: Center(
      //     child: FutureBuilder<List<Results>?>(
      //       future: fetchCharacters(),
      //       builder: (context, snapshot) {
      //         if (!snapshot.hasData) {
      //           return const Center(
      //             child: CircularProgressIndicator(),
      //           );
      //         } else {
      //           return ListView.builder(
      //               itemCount: snapshot.data!.length,
      //               // itemCount: 10,
      //               itemBuilder: (context, index) {
      //                 return ListTile(
      //                   minLeadingWidth: 40,
      //                   // leading: Image.network(
      //                   //     errorBuilder: (context, error, stackTrace) {
      //                   //   return Text('');
      //                   // },
      //                   //     snapshot.data?[index].thumbnail.path +
      //                   //         "/portrait_fantastic.jpg"),
      //                   title: Text(snapshot
      //                       .data![index].comics!.items![index].name
      //                       .toString()),
      //                 );
      //                 // return Image.network(
      //                 //     errorBuilder: (context, error, stackTrace) {
      //                 //   return Text('');
      //                 // },
      //                 //     snapshot.data?[index].thumbnail.path +
      //                 //         "/portrait_fantastic.jpg");
      //               });
      //         }
      //       },
      //     ),
      //   ),
      // ),
    );
  }
}
