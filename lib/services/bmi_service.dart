import 'dart:math';

import 'package:bmi_calculator/constants/constants.dart';

class BMIService {
  BMIService({this.height, this.weight});

  final int weight;
  final int height;

  double _bmi;
  String _result;
  String _interpretation;
  int _colour;

  void calculateBMI() {
    _bmi = (weight / pow(height / 100, 2));
    _generateResult();
  }

  void _generateResult() {
    if (_bmi >= 25) {
      _result = 'Overweight';
      _interpretation =
          'You have a hgiher than normal body weight. Try to exercise more.';
      _colour = overWeightColor;
    } else if (_bmi > 18.5) {
      _result = 'Normal';
      _interpretation = 'You have a normal body weight. Good job';
      _colour = normalWeightColor;
    } else {
      _result = 'Underweight';
      _interpretation =
          'You have a lower than normal body weight. You can eat a bit more';
      _colour = underWeightColor;
    }
  }

  String getBMI() {
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    return _result;
  }

  String getInterpretation() {
    return _interpretation;
  }

  int getColour() {
    return _colour;
  }
}
