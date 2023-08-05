import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../receipt.dart';
import 'receipt_total.dart';
import 'recept_item.dart';

class ReceiptScreen extends ConsumerWidget {
  const ReceiptScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(receiptProvider);
    final receiptNotifier = ref.watch(receiptProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('レシート入力'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                final target = state.items[index];

                return ReceiptItem(
                  item: target,
                  onChangeName: (value) =>
                      receiptNotifier.editName(index, value),
                  onChangePrice: (value) =>
                      receiptNotifier.editPrice(index, value),
                  onToggleTax: () => receiptNotifier.toggleTax(index),
                );
              },
              separatorBuilder: (_, __) => const Divider(),
              itemCount: state.items.length,
            ),
          ),
          const Divider(),
          ReceiptTotal(
            total: state.total,
            payment: state.payment,
            onChangePayment: receiptNotifier.changePayment,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: receiptNotifier.addInitialItem,
        child: const Icon(Icons.add),
      ),
    );
  }
}
