import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/value/item.dart';

class ReceiptItem extends ConsumerWidget {
  const ReceiptItem({
    super.key,
    required this.item,
    required this.onChangeName,
    required this.onChangePrice,
    required this.onToggleTax,
  });

  final Item item;
  final void Function(ItemName) onChangeName;
  final void Function(WithoutTaxPrice) onChangePrice;
  final void Function() onToggleTax;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      title: TextField(
        decoration: const InputDecoration(
          hintText: '商品名(任意)',
        ),
        onChanged: (value) => onChangeName(ItemName(value: value)),
      ),
      subtitle: Column(
        children: [
          const SizedBox(height: 8),
          Row(
            children: [
              SizedBox(
                width: 200,
                child: TextField(
                  decoration: const InputDecoration(
                    hintText: '金額',
                  ),
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  onChanged: (value) {
                    final input = value.isEmpty ? '0' : value;
                    onChangePrice(WithoutTaxPrice(value: double.parse(input)));
                  },
                ),
              ),
              TextButton(
                onPressed: onToggleTax,
                child: Text(item.tax.displayName),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
