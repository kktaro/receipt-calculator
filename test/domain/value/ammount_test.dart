import 'package:flutter_test/flutter_test.dart';
import 'package:receipt_calculator/domain/value/ammount.dart';

void main() {
  group('add', () {
    test('2つの整数同士の加算ができること', () {
      const ammount1 = Ammount(value: 100);
      const ammount2 = Ammount(value: 150);
      final actual = ammount1.add(ammount2);
      expect(actual, const Ammount(value: 250));

      const ammount3 = Ammount(value: 200);
      const ammount4 = Ammount(value: 250);
      const ammount5 = Ammount(value: 1000);
      final actual2 = [ammount1, ammount2, ammount3, ammount4, ammount5]
          .reduce((value, element) => value.add(element));
      expect(actual2, const Ammount(value: 1700));
    });

    test('複数の整数同士の加算ができること', () {
      const ammount1 = Ammount(value: 100);
      const ammount2 = Ammount(value: 150);
      const ammount3 = Ammount(value: 200);
      const ammount4 = Ammount(value: 250);
      const ammount5 = Ammount(value: 1000);
      final actual = [ammount1, ammount2, ammount3, ammount4, ammount5]
          .reduce((value, element) => value.add(element));
      expect(actual, const Ammount(value: 1700));
    });
  });
}
