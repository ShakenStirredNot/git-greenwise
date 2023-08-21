import 'package:flutter/material.dart';

import 'styles.dart';
import 'app.dart';
import 'home.dart';

class GuideApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: gLightGreen,
            leading: IconButton(
              icon: Icon(Icons.close, color: Colors.black),
              onPressed: () {
                Navigator.pop(context); // Close the scanning page
              },
            ),
          ),
          body: RecyclingGuideApp(),
        ),
      ),
    );
  }
}

class RecyclingGuideApp extends StatelessWidget {
  const RecyclingGuideApp({super.key});
  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Container(
          width: 411,    //411
          height: 720,   //731
          padding: const EdgeInsets.only(top: 30, left: 3, right: 3),
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 352,     //352
                height: 534,    //534
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Recycling Guide',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontFamily: 'Proxima Nova',
                        fontWeight: FontWeight.w700,
                        height: 1.40,
                      ),
                    ),
                    Container(
                      height: 130,    //123
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 51,
                            child: Container(
                              width: 340,   //351
                              height: 68,  //72
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 57,    //57
                                    height: 68,     //72
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/recycling_guide/01.png"),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 5),
                                  Container(
                                    width: 57,
                                    height: 68,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/recycling_guide/02.png"),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 5),
                                  Container(
                                    width: 57,
                                    height: 68,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/recycling_guide/03.png"),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 5),
                                  Container(
                                    width: 57,
                                    height: 68,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/recycling_guide/04.png"),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 5),
                                  Container(
                                    width: 57,
                                    height: 68,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/recycling_guide/05.png"),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 5),

                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 1,
                            top: 0,
                            child: Container(
                              width: 324,
                              height: 31,    //31
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 66,
                                    height: 31,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: 0,
                                          top: 0,
                                          child: Container(
                                            width: 66,
                                            height: 31,
                                            decoration: ShapeDecoration(
                                              color: Color(0xFF4CAF50),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                BorderRadius.circular(20),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 24,
                                          top: 8,
                                          child: Text(
                                            'All',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15,
                                              fontFamily: 'Proxima Nova',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Container(
                                    width: 103,
                                    height: 31,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: 0,
                                          top: 0,
                                          child: Container(
                                            width: 103,
                                            height: 31,
                                            decoration: ShapeDecoration(
                                              shape: RoundedRectangleBorder(
                                                side: BorderSide(
                                                    width: 0.50,
                                                    color: Color(0xFF4CAF50)),
                                                borderRadius:
                                                BorderRadius.circular(20),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 15,
                                          top: 8,
                                          child: Text(
                                            'Recyclable',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15,
                                              fontFamily: 'Proxima Nova',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Container(
                                    width: 135,
                                    height: 31,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: 0,
                                          top: 0,
                                          child: Container(
                                            width: 135,
                                            height: 31,
                                            decoration: ShapeDecoration(
                                              shape: RoundedRectangleBorder(
                                                side: BorderSide(
                                                    width: 0.50,
                                                    color: Color(0xFF4CAF50)),
                                                borderRadius:
                                                BorderRadius.circular(20),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 15,
                                          top: 8,
                                          child: Text(
                                            'Non-Recyclable',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15,
                                              fontFamily: 'Proxima Nova',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),  //uptil City Guidelines
                    Container(
                      width: 351,
                      height: 360,     //547   //EDIT FOR OVERFLOW
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Text(
                              'City Guidelines',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontFamily: 'Proxima Nova',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 268,
                            top: 8,
                            child: Text(
                              'Edit location',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontFamily: 'Proxima Nova',
                                fontWeight: FontWeight.w600,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 9,
                            top: 20,
                            child: Container(
                              width: 333,
                              height: 240,   //492
                              padding: const EdgeInsets.only(top: 30, left: 3, right: 3),
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: 100,
                                        height: 100,
                                        decoration: ShapeDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                "assets/recycling_guide/plastic_card.png"),
                                            fit: BoxFit.fill,
                                          ),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                        ),
                                      ), //plastic card
                                      const SizedBox(width: 10),
                                      Container(
                                        width: 100,
                                        height: 100,
                                        decoration: ShapeDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                "assets/recycling_guide/paper_card.png"),
                                            fit: BoxFit.fill,
                                          ),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                        ),
                                      ), //paper card
                                      const SizedBox(width: 10),
                                      Container(
                                        width: 100,
                                        height: 100,
                                        decoration: ShapeDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                "assets/recycling_guide/electronics_card.png"),
                                            fit: BoxFit.fill,
                                          ),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                        ),
                                      ), //electronics card
                                    ],
                                  ),
                                  SizedBox(height: 10), // Adding some space between rows
                                  Row(
                                    children: [
                                      Container(
                                        width: 100,
                                        height: 100,
                                        decoration: ShapeDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                "assets/recycling_guide/glass_card.png"),
                                            fit: BoxFit.fill,
                                          ),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                        ),
                                      ), //glass card
                                      const SizedBox(width: 10),
                                      Container(
                                        width: 100,
                                        height: 100,
                                        decoration: ShapeDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                "assets/recycling_guide/metal_card.png"),
                                            fit: BoxFit.fill,
                                          ),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                        ),
                                      ), //metal card
                                      const SizedBox(width: 10),
                                      Container(
                                        width: 100,
                                        height: 100,
                                        decoration: ShapeDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                "assets/recycling_guide/other_card.png"),
                                            fit: BoxFit.fill,
                                          ),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                        ),
                                      ), //other card
                                    ],
                                  ),
                                ],
                              ),

                            ),
                          ),
                        ],
                      ),
                    ), //All city guidelines images
                  ],
                ),
              ), //up to and including city guidelines
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 300,  //150
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 405,    //405
                      height: 87,     //127
                      child: Stack(
                        children: [

                          Positioned(
                            // Navbar bg
                            left: 0,
                            top: 40,
                            child: Container(
                              width: 405,
                              height: 87,
                              decoration: ShapeDecoration(
                                color: Color(0xFFE8FAD3),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                shadows: [
                                  BoxShadow(
                                    color: Color(0xFFE6E6E6),
                                    blurRadius: 30,
                                    offset: Offset(0, -1),
                                    spreadRadius: 1,
                                  )
                                ],
                              ),
                            ),
                          ),  //Navigation bar bg

                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => MainApp()), // Replace MainApp with your scanning page widget
                              );
                            },
                            child: Align(
                              alignment: Alignment(0, 1.7), // Centered at the bottom
                              child: Container(
                                width: 80,    //80
                                height: 80,    //80
                                child: Stack(
                                  children: [
                                    Container(
                                      width: 80,
                                      height: 80,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFF94E74A),
                                        shape: CircleBorder(),
                                      ),
                                    ),
                                    Positioned(
                                      left: 17,
                                      top: 17,
                                      child: Container(
                                        width: 46,
                                        height: 46,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage('assets/navbar/recycle_scan.png'),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ), //Scanning button


                          Positioned(
                            // Home icon
                            left: 26,
                            top: 620,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context) => HomeApp()),
                                );
                              },
                              child: Opacity(
                                opacity: 1.0,
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('assets/navbar/home_icon.png'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ), //Home icon
                          Positioned(
                            // "Guide" label
                            left: 22,
                            top: 645,
                            child: Text(
                              'Guide',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontFamily: 'Proxima Nova',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ), //Home label


                          Positioned(
                            // guide icon
                            left: 106,
                            top: 610,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context) => GuideApp()),
                                );
                              },
                              child: Opacity(
                                opacity: 1.0,
                                child: Container(
                                  width: 36,
                                  height: 36,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('assets/navbar/guide_icon.png'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ), //Guide icon

                          Positioned(
                            //map icon
                            left: 262,
                            top: 620,
                            child: Opacity(
                              opacity: 1.0,
                              child: Container(
                                width: 36,
                                height: 36,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/navbar/map_icon.png'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                          ), //Map icon

                          Positioned(
                            //redeem icon
                            left: 338,
                            top: 620,
                            child: Opacity(
                              opacity: 1.0,
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/navbar/redeem_icon.png'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                          ),  //Redeem icon

                        ],
                      ),
                    ),
                  ],
                ),
              ),   //Navigation bar/nav bar
            ],
          ),
        ),
      ],
    );
  }
}
