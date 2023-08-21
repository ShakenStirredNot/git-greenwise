import 'package:flutter/material.dart';
import 'app.dart';
import 'recycling_guide.dart';

class HomeApp extends StatelessWidget {
  const HomeApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GreenWise App',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFFCFFFB),
      ),
      home: Scaffold(
        body: ListView(children: [
          Home(),
        ]),
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 411,
          height: 685,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(),
          child: Stack(
            children: [
              Positioned(
                left: 25,
                top: 30,
                child: Container(
                  width: 267,
                  height: 54,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 59,
                        top: 22,
                        child: Text(
                          'Let’s get recycling!',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontFamily: 'Proxima Nova',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 59,
                        top: 4,
                        child: Text(
                          'Welcome back, Sarah',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Proxima Nova',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 54,
                          height: 54,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/home/user_profile.png'), // User Profile Image
                            ),
                            shape: OvalBorder(
                              side: BorderSide(
                                  width: 1, color: Color(0xFFF6F6F6)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Positioned(
                //Leaf Points
                left: 335.19,
                top: 42.95,
                child: Container(
                  width: 50.81,
                  height: 21.05,
                  child: Stack(
                    children: [
                      Container(
                        width: 20,
                        height: 21,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/home/leaf_points.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 21.81,
                        top: 5.05,
                        child: Text(
                          '300',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Proxima Nova',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Positioned(
                //Earn & Redeem BUTTONS
                left: 31,
                top: 104,
                child: Container(
                  width: 349,
                  height: 65,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 145,
                          height: 65,
                          child: Stack(
                            children: [
                              Positioned(
                                // Earn Button
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 145,
                                  height: 65,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFFCFFFA),
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          width: 0.50,
                                          color: Color(0xFF4CAF50)),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 51,
                                top: 22,
                                child: Text(
                                  'Earn',
                                  style: TextStyle(
                                    color: Color(0xFF3C9040),
                                    fontSize: 20,
                                    fontFamily: 'Proxima Nova',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Positioned(
                                //Earn icon
                                left: 4,
                                top: 14.72,
                                child: Container(
                                  width: 40,
                                  height: 38.86,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/home/leaf_earn.png'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // arrow
                                left: 107,
                                top: 18,
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image:
                                      AssetImage('assets/home/arrow.png'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        // Redeem Button
                        left: 160,
                        top: 0,
                        child: Container(
                          width: 189,
                          height: 65,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 189,
                                  height: 65,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFFCFFFA),
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          width: 0.50,
                                          color: Color(0xFF4CAF50)),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                //redeem icon
                                left: 12,
                                top: 14.72,
                                child: Container(
                                  width: 40,
                                  height: 38.86,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/home/redeem_icon.png'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 61,
                                top: 22,
                                child: Text(
                                  'Redeem',
                                  style: TextStyle(
                                    color: Color(0xFF3C9040),
                                    fontSize: 20,
                                    fontFamily: 'Proxima Nova',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Positioned(
                                //arrow
                                left: 151,
                                top: 18,
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image:
                                      AssetImage('assets/home/arrow.png'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // WEEKLY RECYCLING PROGRESS //
              Positioned(
                  left: 25,
                  top: 199,
                  child: Container(
                    //base bg & shape
                    width: 361,
                    height: 169,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 361,
                            height: 169,
                            decoration: ShapeDecoration(
                              color: Color(0xFFE8FAD3),
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    width: 0.50, color: Color(0xFF94E74A)),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ),

                        //Text title
                        Positioned(
                          left: 70,
                          top: 20,
                          child: Text(
                            'This week, you’ve recycled:',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'Proxima Nova',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),

                        //Paper Progress
                        Positioned(
                          left: 51.31,
                          top: 48,
                          child: Container(
                            width: 259,
                            height: 57,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 50,
                                    height: 52,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/home/paper_progress.png'),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),

                                // Plastic progress
                                Positioned(
                                  left: 100,
                                  top: 0,
                                  child: Container(
                                    width: 57,
                                    height: 57,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/home/plastic_progress.png'),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),

                                //Cans progress
                                Positioned(
                                  left: 207,
                                  top: 0,
                                  child: Container(
                                    width: 52,
                                    height: 57,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/home/cans_progress.png'),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        // Bottles: 5/5
                        Positioned(
                          left: 172,
                          top: 115,
                          child: Text(
                            '5/5',
                            style: TextStyle(
                              color: Color(0xFF010900),
                              fontSize: 12,
                              fontFamily: 'Proxima Nova',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),

                        // Cans: 1/2
                        Positioned(
                          left: 277,
                          top: 115,
                          child: Text(
                            '1/2',
                            style: TextStyle(
                              color: Color(0xFF010900),
                              fontSize: 12,
                              fontFamily: 'Proxima Nova',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),

                        // Cardboard: 2/5
                        Positioned(
                          left: 68,
                          top: 115,
                          child: Text(
                            '2/5',
                            style: TextStyle(
                              color: Color(0xFF010900),
                              fontSize: 12,
                              fontFamily: 'Proxima Nova',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),

                        //Cardboard name
                        Positioned(
                          left: 48,
                          top: 129,
                          child: Text(
                            'Cardboard',
                            style: TextStyle(
                              color: Color(0xFF010900),
                              fontSize: 12,
                              fontFamily: 'Proxima Nova',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),

                        // Bottles name
                        Positioned(
                          left: 162,
                          top: 129,
                          child: Text(
                            'Bottles',
                            style: TextStyle(
                              color: Color(0xFF010900),
                              fontSize: 12,
                              fontFamily: 'Proxima Nova',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),

                        // Cans name
                        Positioned(
                          left: 271,
                          top: 129,
                          child: Text(
                            'Cans',
                            style: TextStyle(
                              color: Color(0xFF010900),
                              fontSize: 12,
                              fontFamily: 'Proxima Nova',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),

              // WEEKLY CHALLENGE SECTION //
              Positioned(
                  left: 25,
                  top: 398,

                  // Section Title
                  child: Container(
                    width: 361,
                    height: 150,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Text(
                            'Weekly Challenge',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontFamily: 'Proxima Nova',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),

                        //Section bg
                        Positioned(
                          left: 0,
                          top: 44,
                          child: Container(
                            width: 361,
                            height: 106,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 361,
                                    height: 106,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFE8FAD3),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),

                                // Weekly objective
                                Positioned(
                                  left: 24,
                                  top: 20,
                                  child: Text(
                                    'Repurpose 5 glass jars',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontFamily: 'Proxima Nova',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),

                                // Week's progress: 3/5 jars
                                Positioned(
                                  left: 26,
                                  top: 46,
                                  child: Text(
                                    '3/5 jars',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontFamily: 'Proxima Nova',
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 0.90,
                                    ),
                                  ),
                                ),

                                // Shadow
                                Positioned(
                                  left: 284,
                                  top: 85,
                                  child: Container(
                                    width: 40,
                                    height: 5,
                                    decoration: ShapeDecoration(
                                      color: Color(0x99010900),
                                      shape: OvalBorder(),
                                    ),
                                  ),
                                ),

                                // Jars
                                Positioned(
                                  left: 271,
                                  top: 15,
                                  child: Container(
                                    width: 73,
                                    height: 75,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image:
                                        AssetImage('assets/home/jars.png'),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),

                                // Progress bar
                                Positioned(
                                  left: 26,
                                  top: 74,
                                  child: Container(
                                    width: 251,
                                    height: 12,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/home/progress_bar.png'),
                                        //fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
              ), //This week

              ////                  NAV BAR                     ////

              Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional.bottomCenter,

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
                  ),
                  //Scan button
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MainApp()),
                      );
                    },
                    child: Align(
                      alignment: Alignment(0, 0.9), // Centered at the bottom
                      child: Container(
                        width: 80,
                        height: 80,
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
                  ),

//highlight homepage
                  Positioned(
                    left: 12,
                    top: 605,
                    child: Opacity(
                      opacity: 0.60,
                      child: Container(
                        width: 68,
                        height: 68,
                        decoration: ShapeDecoration(
                          color: Color(0xFFE8FAD3),
                          shape: OvalBorder(),
                        ),
                      ),
                    ),
                  ),

// "Home" label
                  Positioned(
                    left: 22,
                    top: 645,
                    child: Text(
                      'Home',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Proxima Nova',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),

//Home icon
                  Positioned(
                    left: 26,
                    top: 610,
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
                  Positioned(
//guide icon
                    left: 106,
                    top: 620,
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
                  ),
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
                  ),
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
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}