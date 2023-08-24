import 'package:flutter/material.dart';

import 'login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Book TrackerFlutter ',
        home: GetStared(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.deepPurple));
  }
}

class GetStared extends StatelessWidget {
  const GetStared({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: CircleAvatar(
        backgroundColor: Color.fromARGB(255, 231, 243, 248),
        child: Column(
          children: [
            Spacer(),
            const Text('BookTracker',
                style: TextStyle(
                    color: Color.fromARGB(255, 31, 31, 31),
                    fontSize: 30,
                    fontWeight: FontWeight.bold)),
            const Text('"Read ..Change .. Yourself"',
                style: TextStyle(
                    color: Color.fromARGB(255, 107, 107, 107),
                    fontSize: 20,
                    fontWeight: FontWeight.w400)),
            SizedBox(height: 50),
            TextButton.icon(
                style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Color.fromARGB(255, 248, 250, 117)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                icon: Icon(
                  Icons.login_rounded,
                  color: Colors.black,
                ),
                label: Text(
                  'Sign in to get started',
                  style: TextStyle(color: Colors.black),
                )),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
