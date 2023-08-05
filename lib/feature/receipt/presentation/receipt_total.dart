import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../domain/value/ammount.dart';
import '../../../domain/value/payment.dart';

class ReceiptTotal extends StatelessWidget {
  const ReceiptTotal({
    super.key,
    required this.total,
    required this.payment,
    required this.onChangePayment,
  });

  final Ammount total;
  final Payment payment;
  final void Function(Payment) onChangePayment;

  static const paymentsOrder = [
    Payment.goca,
    Payment.sharedCard,
    Payment.other,
  ];

  @override
  Widget build(BuildContext context) {
    final totalAmmount = total.value.floor();
    return Column(
      children: [
        const SizedBox(height: 8),
        ToggleButtons(
          isSelected: paymentsOrder.map((e) => e == payment).toList(),
          onPressed: (index) {
            final selected = paymentsOrder[index];
            onChangePayment(selected);
          },
          children: paymentsOrder.map((e) {
            if (e == Payment.goca) {
              return const Text('goca');
            } else if (e == Payment.sharedCard) {
              return const Text('共有カード');
            } else {
              return const Text('その他');
            }
          }).toList(),
        ),
        const SizedBox(height: 16),
        TextButton(
          onPressed: () =>
              Clipboard.setData(ClipboardData(text: totalAmmount.toString())),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.copy),
              Text('合計: $totalAmmount円'),
            ],
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
