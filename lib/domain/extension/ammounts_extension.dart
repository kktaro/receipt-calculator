import '../value/ammount.dart';
import '../value/payment.dart';
import 'double_extension.dart';

extension AmmountsExtension on List<Ammount> {
  Ammount calcTotal(Payment payment) {
    if (isEmpty) return const Ammount(value: 0);
    final sum = reduce((value, element) => value.add(element));
    return switch (payment) {
      Payment.goca => Ammount(value: (sum.value * 0.98).roundAsSignificant()),
      Payment.sharedCard => sum,
      Payment.other => sum,
    };
  }
}
