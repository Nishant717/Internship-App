// ignore_for_file: unused_element, prefer_const_constructors, unused_field, prefer_const_literals_to_create_immutables, unnecessary_string_interpolations, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatefulWidget {
  final String phoneNumber;

  const OtpScreen({Key? key, required this.phoneNumber}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final TextEditingController _pinPutController = TextEditingController();
  final FocusNode _pinPutFocusNode = FocusNode();

  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(15.0),
    );
  }

  Color _buttonColor = Color.fromARGB(255, 195, 193, 193);

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
                  SizedBox(height: 30),
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
                    Row(
                      children: <Widget>[
                        Icon(Icons.arrow_back),
                        SizedBox(width: 80),
                        Text(
                          "Enter the 4 digit OTP sent at",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(151, 151, 151, 1)),
                        ),
                      ],
                    ),
                    Center(
                      child: Text(
                        "${widget.phoneNumber}",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w800),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Pinput(
                        length: 4,
                        showCursor: true,
                        onCompleted: (pin) {
                          // Save the entered OTP
                          _pinPutController.text = pin;
                          // Change button color
                          setState(() {
                            _buttonColor = Color.fromRGBO(70, 223, 183, 1);
                          });
                        },
                      ),
                    ),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          // Validate OTP
                        },
                        style: ElevatedButton.styleFrom(
                          padding:
                              EdgeInsets.symmetric(vertical: 2, horizontal: 30),
                          primary: _buttonColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Text(
                          'Verify',
                          style: TextStyle(fontSize: 16, color: Colors.white70),
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Didn’t receive OTP?",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(width: 2),
                        Text(
                          "RESEND OTP",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromARGB(255, 245, 19, 3)),
                        )
                      ],
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
