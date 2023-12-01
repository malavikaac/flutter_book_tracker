import 'package:flutter/material.dart';
import 'package:flutter_book_tracker/utils/colors%20.dart';
import 'login_page.dart';

class GetStared extends StatelessWidget {
  const GetStared({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: CircleAvatar(
        backgroundColor: const Color.fromARGB(255, 231, 243, 248),
        child: Column(
          children: [
            const Spacer(),
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
            const SizedBox(height: 50),
            TextButton.icon(
                style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 244, 247, 119)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const LoginPage()));
                },
                icon: Icon(
                  Icons.login_rounded,
                  color: ColorsPalette.black,
                ),
                label:  Text(
                  'Sign in to get started',
                  style: TextStyle(color:ColorsPalette.black),
                  
                )),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
