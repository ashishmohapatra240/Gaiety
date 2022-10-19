import 'dart:ui';

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Transparent Login App',
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 80,
                          ),
                          Text(
                            'Welcome back!',
                            style: const TextStyle(
                              color: Color.fromRGBO(0, 6, 26, 1),
                              fontFamily: 'Hind',
                              fontWeight: FontWeight.w600,
                              fontSize: 30,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Email address',
                                  hintText: 'Email address')),
                          SizedBox(
                            height: 24,
                          ),
                          Center(
                            child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Password',
                                    hintText: 'Password')),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Remember me'),
                              Text(
                                'Forget Password?',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          Container(
                            width: double.infinity,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(239, 84, 120, 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            child: TextButton(
                              onPressed: () => {
                                if (_formKey.currentState!.validate())
                                  {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                            content: Text(
                                                'Button moved to separate widget'))),
                                  },
                              },
                              child: Text(
                                "Login",
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Continue using',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 24,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.facebook),
                              SizedBox(
                                width: 24,
                              ),
                              Icon(Icons.report_gmailerrorred),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 224),
                            child: Center(child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Create an account?',style: TextStyle(color: Colors.grey),),
                                Text('Signup',style: TextStyle(color: Colors.black),),
                              ],
                            ),),
                          )
                        ],
                      ),
                    ),
                  
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _signUpLabel(String label, Color textColor) {
  return Text(
    label,
    style: const TextStyle(
        color: Color.fromRGBO(40, 40, 40, 0.7),
        fontWeight: FontWeight.bold,
        fontSize: 18,
        fontFamily: 'Hind'),
  );
}

Widget _loginBtn() {
  return Container(
    width: double.infinity,
    height: 60,
    decoration: const BoxDecoration(
      color: Color(0xff123456),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    child: TextButton(
      onPressed: () => {},
      child: Text(
        "Login",
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w800,
          fontSize: 24,
          fontFamily: 'Hind',
        ),
      ),
    ),
  );
}

Widget _labelTextInput(String label, String hintText, bool isPassword) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      TextFormField(
        validator: (text) {
          if (text == null || text.isEmpty) {
            return 'Can\'t be empty';
          }
          if (text.length < 4) {
            return 'Too short';
          }
          if (!RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)').hasMatch(text))
            return 'Enter a valid number';
          return null;
        },
        obscureText: isPassword,
        cursorColor: Colors.red,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Color.fromRGBO(94, 94, 94, 0.7),
            fontWeight: FontWeight.w400,
            fontSize: 20,
            fontFamily: 'Hind',
          ),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromRGBO(94, 94, 94, 0.7),
            ),
          ),
        ),
      ),
    ],
  );
}

Widget _labelTextInput2(String label, String hintText, bool isPassword) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      TextFormField(
        validator: (text) {
          if (text == null || text.isEmpty) {
            return 'Can\'t be empty';
          }
          if (text.length < 4) {
            return 'Too short';
          }
          if (!RegExp(
                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
              .hasMatch(text)) return 'Enter a valid email';
          return null;
        },
        obscureText: isPassword,
        cursorColor: Colors.red,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Color.fromRGBO(94, 94, 94, 0.7),
            fontWeight: FontWeight.w400,
            fontSize: 20,
            fontFamily: 'Hind',
          ),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromRGBO(94, 94, 94, 0.7),
            ),
          ),
        ),
      ),
    ],
  );
}

Widget _loginLabel() {
  return Align(
      alignment: Alignment.topLeft,
      child: Column(
        children: [
          Text(
            "Login to your account",
            style: const TextStyle(
              color: Color.fromRGBO(203, 203, 203, 1),
              fontWeight: FontWeight.w500,
              fontSize: 24,
              fontFamily: 'Hind',
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ));
}
