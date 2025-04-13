import 'package:flutter/material.dart';
import 'package:wollet/entity/transaction.dart';
import 'package:wollet/ui/component/card_transaction.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (ctx, idx) {
        return CardTransaction(
          transaction: Transaction(
            title: 'Transaction $idx',
            category: 'Category $idx',
            amount: (idx + 1) * 1000.toDouble(),
            type:
                idx % 2 == 0 ? TransactionType.income : TransactionType.expense,
          ),
        );
      },
      itemCount: 1000,
      separatorBuilder: (ctx, idx) {
        return const SizedBox(height: 12);
      },
    );
  }
}
