import 'package:flutter/material.dart';
import 'src/screens/get_started_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Book TrackerFlutter ',
        home: const GetStared(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.deepPurple));
  }
}

