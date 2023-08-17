import 'package:flutter/material.dart';

// Generated by: https://www.figma.com/community/plugin/842128343887142055/
class ScanApp extends StatelessWidget {
  const ScanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: [
          Scan(),
        ]),
      ),
    );
  }
}

class Scan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 411,
          height: 731,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: Color(0xFFFCFFFA),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                left: -114,
                top: -158,
                child: Container(
                  width: 651,
                  height: 924,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 651,
                          height: 897,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://via.placeholder.com/651x897"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 83,
                        top: 122,
                        child: Container(
                          width: 474,
                          height: 802,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://via.placeholder.com/474x802"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 181,
                        top: 345,
                        child: Container(
                          width: 278,
                          height: 278,
                          padding: const EdgeInsets.all(23.17),
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              //,
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 176,
                        top: 753,
                        child: Container(
                          width: 288,
                          height: 80,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(width: 72),
                              Container(
                                width: 80,
                                height: 80,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 80,
                                        height: 80,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFF94E74A),
                                          shape: OvalBorder(),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 21,
                                      top: 21,
                                      child: Container(
                                        width: 38.59,
                                        height: 38.59,
                                        child: Stack(children: [
                                          //,
                                        ]),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 72),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 166,
                        top: 818,
                        child: SizedBox(
                          width: 54,
                          height: 19.01,
                          child: Text(
                            'Upload',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.66,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w600,
                              letterSpacing: -0.28,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 144,
                        top: 220,
                        child: Container(
                          width: 36,
                          height: 36,
                          child: Stack(children: [
                            //,
                          ]),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 11,
                top: 0,
                child: Container(
                  width: 390,
                  height: 47,
                  padding: const EdgeInsets.only(
                    top: 15.33,
                    left: 35.33,
                    right: 17,
                    bottom: 12.67,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '9:41',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF2F2F2F),
                          fontSize: 15.66,
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w600,
                          letterSpacing: -0.28,
                        ),
                      ),
                      Container(
                        width: 73,
                        height: 16,
                        padding: const EdgeInsets.only(
                          top: 2,
                          left: 2.33,
                          right: 1.34,
                          bottom: 1.67,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 17,
                              height: 11.33,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage("https://via.placeholder.com/17x11"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Container(
                              width: 16.71,
                              height: 12,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage("https://via.placeholder.com/17x12"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Container(
                              width: 25,
                              height: 12,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 18.66,
                                    height: 8,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFF2F2F2F),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(1.33),
                                      ),
                                    ),
                                  ),
                                ],
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
        ),
      ],
    );
  }
}
