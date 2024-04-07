// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, unnecessary_new, sort_child_properties_last, avoid_unnecessary_containers

import "package:flutter/material.dart";
import "package:percent_indicator/circular_percent_indicator.dart";

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        // Handle button press
                      },
                      icon: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Color.fromRGBO(
                                70, 223, 183, 1), // Change color to green
                            width: 2, // Change width as needed
                          ),
                        ),
                        child: CircleAvatar(
                          radius: 18,
                          backgroundImage: AssetImage('assets/ProfileImg.png'),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello Kartik",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color.fromRGBO(0, 0, 0, 1)),
                        ),
                        Text(
                          "Let’s see your heart’s streak today",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                              color: Color.fromRGBO(119, 119, 119, 1)),
                        )
                      ],
                    ),
                  ],
                ),
                // SizedBox(width: 80),
                Icon(Icons.notifications_on_outlined, size: 45),
              ],
            ),
            SizedBox(height: 10),
            Stack(
              children: [
                Container(
                  height: 141,
                  width: 354,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(18), // Set the border radius
                    ),
                    shape: BoxShape.rectangle,
                    border: Border.all(
                      color: Color.fromRGBO(
                          102, 77, 239, 1), // Change color to green
                      width: 2, // Change width as needed
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 15),
                      Text(
                        "Emergency help needed?",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                          color: Color.fromRGBO(0, 0, 0, 1),
                        ),
                      ),
                      Text(
                        "Just hold the button to call",
                        style: TextStyle(
                          fontSize: 9,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(0, 0, 0, 1),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(107, 60, 0, 0),
                  child: Container(
                    height: 122.58,
                    width: 150,
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Image.asset(
                            'assets/Redheart.png',
                            width: 5,
                            height: 120,
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                        Positioned(
                          top:
                              36.29, // Adjust the top position to center the second image
                          left:
                              50, // Adjust the left position to center the second image
                          child: Image.asset(
                            'assets/sos.png', // Replace 'your_second_image.png' with the path to your second image
                            width: 50, // Set width as needed
                            height: 50, // Set height as needed
                            fit: BoxFit.scaleDown, // Adjust image fit as needed
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  Container(
                    child: Material(
                      elevation: 7,
                      borderRadius: BorderRadius.circular(12),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          shape: BoxShape.rectangle,
                          border: Border.all(
                            color: Color.fromRGBO(102, 77, 239, 1),
                            width: 1,
                          ),
                        ),
                        padding: EdgeInsets.all(15),
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.details_rounded, size: 45),
                            SizedBox(width: 20),
                            Text(
                              "Risk\nAssessment",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(width: 100),
                            CircularPercentIndicator(
                              radius: 26.0,
                              lineWidth: 5.0,
                              animation: true,
                              percent: 0.3,
                              center: Container(
                                width: 34.0,
                                height: 34.0,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromRGBO(224, 219, 252, 1),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  "50%",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12.0,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              circularStrokeCap: CircularStrokeCap.round,
                              progressColor: Color.fromRGBO(95, 87, 234, 1),
                              backgroundColor: Color.fromRGBO(194, 184, 249, 1),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(130, 70, 0, 0),
                    child: Container(
                      // color: Colors.white,
                      decoration: BoxDecoration(
                        color:
                            Colors.white, // Set the background color to white
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        shape: BoxShape.rectangle,
                        border: Border.all(
                          color: Color.fromRGBO(102, 77, 239, 1),
                          width: 1,
                        ),
                      ),
                      height: 30,
                      width: 103,
                      child: Positioned(
                        bottom: 0,
                        right: 0,
                        child: TextButton(
                          onPressed: () => {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '  Calculate',
                              ),
                              Icon(Icons.arrow_forward)
                            ],
                          ),
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
