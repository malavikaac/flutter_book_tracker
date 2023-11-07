import 'package:flutter/material.dart';
import 'package:flutter_book_tracker/widgets/input_decoration.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isCreatedAccountClicked = false;
  final _formkey = GlobalKey<FormState>();
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Expanded(
              flex: 2,
              child: Container(color: const Color.fromARGB(255, 227, 230, 248))),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              "Sign In",
              style: TextStyle(
                  color: Color.fromARGB(255, 37, 37, 37),
                  fontWeight: FontWeight.w500,
                  fontSize: 20),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            children: [
              SizedBox(
                  width: 300,
                  height: 300,
                  child: isCreatedAccountClicked != true
                      ? Form(
                          key: _formkey,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: TextFormField(
                                  controller: _emailTextController,
                                  decoration: buildInputDecoration(
                                    label:  "Enter email",hintText:  "abc@gmail.com"),
                                ),
                              ),
                              Padding(   
                                padding: const EdgeInsets.all(15.0),
                                child: TextFormField(
                                  controller: _passwordTextController,
                                  obscureText: true,
                                  decoration: buildInputDecoration(
                                    label:  "Enter Password",hintText:  "......."),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),TextButton(
                                onPressed: (){}, 
                                style:TextButton.styleFrom(
                                  padding: const EdgeInsets.all(15),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4)
                                ),
                                backgroundColor: Colors.deepPurple,
                                textStyle: const TextStyle(
                                  fontSize: 16, 
                                 )
                                ) ,
                                child: const Text('Sign In',style: TextStyle(color: Colors.white),))
                            ],
                          ))
                      : Form(
                          child: TextFormField(),
                        )),
              TextButton.icon(
                  onPressed: () {
                    setState(() {
                      if (!isCreatedAccountClicked) {
                        isCreatedAccountClicked = true;
                      } else {
                        isCreatedAccountClicked = false;
                      }
                    });
                  },
                  icon: const Icon(
                    Icons.portrait_rounded,
                    color: Color.fromARGB(213, 150, 37, 170),
                  ),
                  label: Text(
                    isCreatedAccountClicked
                        ? 'Already have an account?'
                        : 'Create Account',
                    style: const TextStyle(
                        fontSize: 18,
                        fontStyle: FontStyle.italic,
                        color: Color.fromARGB(213, 150, 37, 170)),
                  ))
            ],
          ),
          Expanded(
              flex: 2,
              child: Container(
                color: const Color.fromARGB(255, 227, 230, 248),
              )),
        ],
      ),
    );
  }
}
