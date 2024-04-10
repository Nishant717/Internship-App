// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, unnecessary_new, sort_child_properties_last, avoid_unnecessary_containers, unused_import

import "package:dots_indicator/dots_indicator.dart";
import "package:flutter/material.dart";
import "package:percent_indicator/circular_percent_indicator.dart";

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex =
      0; // Initialize with the index of the initially selected item

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
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
            Icon(Icons.notifications_on_outlined, size: 45),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: <Widget>[
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
                              fit: BoxFit
                                  .scaleDown, // Adjust image fit as needed
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
                              Icon(
                                Icons.details_rounded,
                                size: 45,
                                color: Color.fromRGBO(102, 77, 239, 1),
                              ),
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
                                backgroundColor:
                                    Color.fromRGBO(194, 184, 249, 1),
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
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Scheduled Appointment",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(48, 48, 48, 1)),
                    ),
                    Text(
                      "View all",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          color: Color.fromRGBO(95, 87, 234, 1)),
                    )
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (int i = 0; i < 4; i++)
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Stack(children: [
                          Container(
                            height: 192,
                            width: 372,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(98, 82, 236, 0.1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(18)),
                            ),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          12, 12, 0, 0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(18.0),
                                          border: Border.all(
                                            color:
                                                Color.fromRGBO(95, 87, 234, 1),
                                            width: 3.0,
                                          ),
                                        ),
                                        padding: EdgeInsets.all(
                                            0), // Add padding to create space between the image and the border
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                              15.0), // Adjust the border radius here to match the container's border radius
                                          child: Image.asset(
                                            "assets/Ashutosh.jpg",
                                            height:
                                                102, // Subtracting the padding from the image size
                                            width:
                                                102, // Subtracting the padding from the image size
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              136, 0, 0, 88),
                                          child: Container(
                                            height: 31,
                                            width: 115,
                                            decoration: BoxDecoration(
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1),
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(0.0),
                                                topRight: Radius.circular(18.0),
                                                bottomLeft:
                                                    Radius.circular(18.0),
                                                bottomRight:
                                                    Radius.circular(0.0),
                                              ),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                "Starts in 10 min",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color.fromRGBO(
                                                        242, 31, 97, 1)),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ])
                                ]),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(126, 35, 0, 0),
                            child: Text(
                              "Dr. Ashutosh Misra",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(0, 0, 0, 1)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(126, 74, 0, 0),
                            child: Container(
                              height: 54,
                              width: 135,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(224, 219, 252, 1),
                                borderRadius: BorderRadius.circular(12.0),
                                border: Border.all(
                                  color: Color.fromRGBO(224, 219, 252, 1),
                                  width: 3.0,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "General Consultation",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color:
                                                Color.fromRGBO(95, 87, 234, 1)),
                                      ),
                                      SizedBox(height: 3),
                                      Text(
                                        "10.30 AM",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color:
                                                Color.fromRGBO(95, 87, 234, 1)),
                                      )
                                    ]),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(308, 74, 0, 0),
                            child: Container(
                              height: 54,
                              width: 63,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Color.fromRGBO(95, 87, 234, 1),
                                    Color.fromRGBO(54, 49, 132, 1),
                                  ],
                                ),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(12),
                                  bottomLeft: Radius.circular(12),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(children: <Widget>[
                                  Text(
                                    "Token No",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color:
                                            Color.fromRGBO(255, 255, 255, 1)),
                                  ),
                                  Text(
                                    "5",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                        color:
                                            Color.fromRGBO(255, 255, 255, 1)),
                                  )
                                ]),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 163, 0, 0),
                            child: Container(
                              height: 29,
                              width: 86,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(242, 31, 97, 1),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(6),
                                  bottomRight: Radius.circular(6),
                                  bottomLeft: Radius.circular(18),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  "Pay ₹200",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Color.fromRGBO(255, 255, 255, 1)),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(93, 170, 0, 0),
                            child: Text(
                              "Pending",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w300,
                                  color: Color.fromRGBO(95, 87, 234, 1)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(195, 165, 0, 0),
                            child: Container(
                              height: 49,
                              width: 152,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(18)),
                                color: Color.fromRGBO(255, 255, 255, 1),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Material(
                                  elevation:
                                      4, // Adjust the elevation for the shadow depth
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(
                                        12), // Set the border radius
                                  ),
                                  child: Container(
                                    height: 31,
                                    width: 140,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(
                                            12), // Set the border radius
                                      ),
                                      shape: BoxShape.rectangle,
                                      border: Border.all(
                                        color: Color.fromRGBO(102, 77, 239,
                                            1), // Change color to green
                                        width: 0.5, // Change width as needed
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.videocam_outlined,
                                          size: 28,
                                          color: Color.fromRGBO(95, 87, 234, 1),
                                        ),
                                        Text(
                                          "Join Call",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                              color: Color.fromRGBO(
                                                  95, 87, 234, 1)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ]),
                      ),
                  ],
                ),
              ),
              DotsIndicator(
                dotsCount: 3,
                position: 1,
                decorator: DotsDecorator(
                  activeColor: Color.fromRGBO(95, 87, 234, 1),
                  color: Color.fromRGBO(240, 237, 253, 1),
                  size: const Size.square(9.0),
                  activeSize: const Size(18.0, 9.0),
                  activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "How It Helps",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(48, 48, 48, 1)),
                    ),
                    Text(
                      "View all",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          color: Color.fromRGBO(95, 87, 234, 1)),
                    )
                  ],
                ),
              ),
              Stack(children: [
                Container(
                  height: 174,
                  width: 354,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(98, 82, 236, 0.1),
                    borderRadius: BorderRadius.all(Radius.circular(18)),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.fromLTRB(33, 25, 0, 0),
                    child: Material(
                      elevation:
                          5, // Set the elevation to control the shadow depth
                      borderRadius: BorderRadius.circular(
                          12), // Set the border radius as needed
                      child: Container(
                        height: 203.33,
                        width: 290,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                              6.67), // Set the same border radius as Material
                          child: Image.asset(
                            "assets/video.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ))
              ]),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Health Article",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(48, 48, 48, 1)),
                    ),
                    Text(
                      "View all",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          color: Color.fromRGBO(95, 87, 234, 1)),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              Stack(children: [
                Container(
                  height: 67,
                  width: 354,
                  decoration: BoxDecoration(
                    color: Colors.white, // Set the background color to white
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    shape: BoxShape.rectangle,
                    border: Border.all(
                      color: Color.fromRGBO(102, 77, 239, 1),
                      width: 1,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(7, 5, 0, 0),
                  child: Container(
                    height: 46.02,
                    width: 55,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                          8), // Set the same border radius as Material
                      child: Image.asset(
                        "assets/medicine.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(74, 10, 0, 0),
                  child: Text(
                    "The 25 Healthiest Fruits You Can Eat,\n According to a Nutritionist",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 10,
                        color: Color.fromRGBO(86, 86, 86, 1)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(74, 43, 0, 0),
                  child: Text(
                    "Jun 10, 2021 ",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                        color: Color.fromRGBO(173, 173, 173, 1)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(137, 43, 0, 0),
                  child: Text(
                    "·",
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 10,
                        color: Color.fromRGBO(173, 173, 173, 1)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(143, 43, 0, 0),
                  child: Text(
                    "5min read",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                        color: Color.fromRGBO(173, 173, 173, 1)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(320, 10, 0, 0),
                  child: Icon(
                    Icons.bookmark,
                    color: Color.fromRGBO(95, 87, 234, 1),
                  ),
                )
              ])
            ]),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        selectedFontSize: 0, // Set selectedFontSize to 0 to reduce the height
        unselectedFontSize:
            0, // Set unselectedFontSize to 0 to reduce the height
        elevation: 0, // Set elevation to 0 to reduce the shadow effect
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: _selectedIndex == 0
                  ? Color.fromRGBO(70, 223, 183, 1)
                  : Colors.grey,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_comment_outlined,
                color: Colors.grey // Color always set to desired color
                ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.addchart_outlined,
                color: Colors.grey // Color always set to desired color
                ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined,
                color: Colors.grey // Color always set to desired color
                ),
            label: '',
          ),
        ],
      ),
    );
  }
}
