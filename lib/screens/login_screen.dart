// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _phoneNumberController = TextEditingController();
  Color _buttonColor = Color.fromARGB(255, 195, 193, 193);

  @override
  void dispose() {
    _phoneNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment(1, 1),
                  colors: <Color>[
                    Color.fromRGBO(70, 223, 183, 1),
                    Color.fromRGBO(102, 77, 239, 1),
                  ],
                  tileMode: TileMode.mirror,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 15, 15, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Already a user?",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    'assets/LoginPageLogo.png',
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: MediaQuery.of(context).size.height / 1.3,
                padding: EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(40),
                  ),
                ),
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        "Login to your account",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: "+91",
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          flex: 4,
                          child: TextField(
                            controller: _phoneNumberController,
                            onChanged: (value) {
                              if (value.length == 10) {
                                setState(() {
                                  _buttonColor =
                                      Color.fromRGBO(70, 223, 183, 1);
                                });
                              } else {
                                setState(() {
                                  _buttonColor =
                                      Color.fromARGB(255, 195, 193, 193);
                                });
                              }
                            },
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              labelText: "Enter your phone number",
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: Text(
                        "By signing in, I accept the Terms & Conditions",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding:
                              EdgeInsets.symmetric(vertical: 2, horizontal: 30),
                          primary: _buttonColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Text(
                          'Login',
                          style: TextStyle(fontSize: 16, color: Colors.white70),
                        ),
                      ),
                    ),
                    SizedBox(height: 230),
                    Center(
                        child: Text(
                      "or connect with",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    )),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          onPressed: () {
                            // Handle button press
                          },
                          icon: CircleAvatar(
                            radius: 20,
                            backgroundImage:
                                AssetImage('assets/FacebookIcon.png'),
                          ),
                        ),
                        SizedBox(width: 10),
                        IconButton(
                          onPressed: () {
                            // Handle button press
                          },
                          icon: CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage('assets/AppleIcon.png'),
                          ),
                        ),
                        SizedBox(width: 10),
                        IconButton(
                          onPressed: () {
                            // Handle button press
                          },
                          icon: CircleAvatar(
                            radius: 20,
                            backgroundImage:
                                AssetImage('assets/GoogleIcon.png'),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
