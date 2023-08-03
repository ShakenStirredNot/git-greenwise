// machine_learning/image_classifier.dart
//  This class will perform the following steps:
//    - Load labels and model
//    - Preprocess image
//    - Use the model
//    - Postprocess the TensorFlow output
//    - Select and build the category output

import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:tflite/tflite.dart';
import 'classifier_category.dart';
import 'classifier_model.dart';

typedef ClassifierLabels = List<String>;

class Classifier {
  final ClassifierLabels _labels;
  final ClassifierModel _model;

  Classifier._({
    required ClassifierLabels labels,
    required ClassifierModel model,
  })  : _labels = labels,
        _model = model;

  static Future<Classifier?> loadWith({
    required String labelsFileName,
    required String modelFileName,
  }) async {
    try {
      final labels = await _loadLabels(labelsFileName);
      final model = await _loadModel(modelFileName);
      return Classifier._(labels: labels, model: model);
    } catch (e) {
      debugPrint('Can\'t initialize Classifier: ${e.toString()}');
      if (e is Error) {
        debugPrintStack(stackTrace: e.stackTrace);
      }
      return null;
    }
  }

  static Future<ClassifierModel> _loadModel(String modelFileName) async {
    await Tflite.loadModel(
      model: modelFileName,
    );

    // Get input and output shape from the model
    final inputShape = Tflite.getInputTensorShape(0);
    final outputShape = Tflite.getOutputTensorShape(0);

    debugPrint('Input shape: $inputShape');
    debugPrint('Output shape: $outputShape');

    // Get input and output type from the model
    final inputType = Tflite.getInputTensorType(0);
    final outputType = Tflite.getOutputTensorType(0);

    debugPrint('Input type: $inputType');
    debugPrint('Output type: $outputType');

    return ClassifierModel(
      inputShape: inputShape,
      outputShape: outputShape,
      inputType: inputType,
      outputType: outputType,
    );
  }

  static Future<ClassifierLabels> _loadLabels(String labelsFileName) async {
    final rawLabels = await FileUtil.loadLabels(labelsFileName);

    // Remove the index number from the label
    final labels = rawLabels
        .map((label) => label.substring(label.indexOf(' ')).trim())
        .toList();

    debugPrint('Labels: $labels');
    return labels;
  }

  void close() {
    Tflite.close();
  }

  ClassifierCategory predict(List<int> imageBytes) {
    debugPrint(
      'Image size: ${imageBytes.length} bytes',
    );

    // Convert imageBytes to Float32List for TensorFlow input
    final inputImage = _preProcessInput(imageBytes);

    debugPrint(
      'Pre-processed image size: ${inputImage.lengthInBytes} bytes',
    );

    // Define the output buffer
    final outputBuffer = TensorBuffer.createFixedSize(
      _model.outputShape,
      _model.outputType,
    );

    // Run inference
    Tflite.runModelOnBinary(
      binary: inputImage.buffer,
      asTyped: true,
      inputShapes: [_model.inputShape],
      outputShapes: [_model.outputShape],
      inputType: _model.inputType,
      outputType: _model.outputType,
    );

    debugPrint('OutputBuffer: ${outputBuffer.getDoubleList()}');

    // Post Process the outputBuffer
    final resultCategories = _postProcessOutput(outputBuffer);
    final topResult = resultCategories.first;

    debugPrint('Top category: $topResult');

    return topResult;
  }

  List<ClassifierCategory> _postProcessOutput(TensorBuffer outputBuffer) {
    final probabilityProcessor = TensorProcessorBuilder().build();

    probabilityProcessor.process(outputBuffer);

    final labelledResult = TensorLabel.fromList(_labels, outputBuffer);

    final categoryList = <ClassifierCategory>[];
    labelledResult.getMapWithFloatValue().forEach((key, value) {
      final category = ClassifierCategory(key, value);
      categoryList.add(category);
      debugPrint('label: ${category.label}, score: ${category.score}');
    });
    categoryList.sort((a, b) => (b.score > a.score ? 1 : -1));

    return categoryList;
  }

  Float32List _preProcessInput(List<int> imageBytes) {
    final imageTensorSize = _model.inputShape.reduce((a, b) => a
