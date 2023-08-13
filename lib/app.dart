import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'widgets/plastic_classifier.dart';

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
      home: const PlasticClassifier(),
      debugShowCheckedModeBanner: false,
    );
  }
}
