import 'package:flutter/material.dart';
import 'package:flutter_book_tracker/src/utils/colors%20.dart';
import 'input_decoration.dart';


// ignore: camel_case_types
class Create_Account_Form extends StatelessWidget {
  const Create_Account_Form({
    super.key,
    required GlobalKey<FormState> formkey,
    required TextEditingController emailTextController,
    required TextEditingController passwordTextController,
  }) : _formkey = formkey, _emailTextController = emailTextController, _passwordTextController = passwordTextController;

  final GlobalKey<FormState> _formkey;
  final TextEditingController _emailTextController;
  final TextEditingController _passwordTextController;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formkey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text('Please enter a valid email and a password that is at least 6 character.'),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  controller: _emailTextController,
                  validator: (value) {
                    return value!.isEmpty ? 'Please add an email': null;
                  },
                  decoration: buildInputDecoration(
                    label:  "Enter your email",hintText:  "abcd@gmail.com"),
                ),
              ),
              Padding(   
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  controller: _passwordTextController,
                   validator: (value) {
                    return value!.isEmpty ? 'Please enter password': null;
                  },
                  obscureText: true,
                  decoration: buildInputDecoration(
                    label:  "Enter Password",hintText:  "........."),
                ),
              ),
              const SizedBox(
                height: 20,
              ),TextButton(
                onPressed: (){
                  if(_formkey.currentState!.validate());
                }, 
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
                child:  Text('Sign Up',style: TextStyle(color:ColorsPalette.white),))
            ],
          ),
        ));
  }
}
