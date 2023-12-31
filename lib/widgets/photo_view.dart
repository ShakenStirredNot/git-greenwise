import 'dart:io';
import 'package:flutter/material.dart';

import '../styles.dart';

class PlasticPhotoView extends StatelessWidget {
  final File? file;
  const PlasticPhotoView({super.key, this.file});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 250,
      color: gLightGreen,
      child: (file == null)
          ? _buildEmptyView()
          : Image.file(file!, fit: BoxFit.cover),
    );
  }

  Widget _buildEmptyView() {
    return const Center(
        child: Text(
          'Please pick a photo',
          style: gAnalyzingTextStyle,
        ));
  }
}