import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'widgets/plastic_classifier.dart';

import 'styles.dart';

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ],
    );
    return MaterialApp(
      title: 'Plastic classification',
      theme: ThemeData.light(),
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
        body: const PlasticClassifier(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
