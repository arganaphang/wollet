import 'package:flutter/material.dart';
import 'package:wollet/entity/transaction.dart';

class CardTransaction extends StatelessWidget {
  final Transaction transaction;
  const CardTransaction({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        leading: Container(
          decoration: BoxDecoration(
            color: (transaction.type == TransactionType.income
                    ? Colors.green
                    : Colors.red)
                .shade100
                .withAlpha(100),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              transaction.type == TransactionType.income
                  ? Icons.arrow_upward_rounded
                  : Icons.arrow_downward_rounded,
              color:
                  transaction.type == TransactionType.income
                      ? Colors.green
                      : Colors.red,
            ),
          ),
        ),
        title: Text(transaction.title),
        subtitle: Text(transaction.createdAt.toString()),
        trailing: Text(
          transaction.amount.toString(),
          style: TextStyle(
            color:
                transaction.type == TransactionType.income
                    ? Colors.green
                    : Colors.red,
          ),
        ),
      ),
    );
  }
}
