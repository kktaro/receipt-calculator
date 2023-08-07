extension DoubleExtension on double {
  static const int _significantDigit = 5;
  double roundAsSignificant() =>
      double.parse(toStringAsFixed(_significantDigit));

  String toStringOrEmpty() => this > 0 ? toString() : '';
}
