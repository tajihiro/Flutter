import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;

  double _bmi;

  CalculatorBrain({this.height, this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi > 25) {
      return 'OVER WEIGHT';
    } else if (_bmi > 18) {
      return 'NOMAL';
    } else {
      return 'UNDER WEIGHT';
    }
  }

  String getInterpretation() {
    if (_bmi > 25) {
      return '運動した方が良いですね。';
    } else if (_bmi > 18) {
      return '健康をそのまま維持してください。';
    } else {
      return 'もう少し食べても良いですよ。';
    }
  }
}
