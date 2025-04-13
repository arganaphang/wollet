import 'package:nanoid/nanoid.dart';

enum TransactionType { income, expense }

class Transaction {
  String id = nanoid();
  String title;
  String category;
  double amount;
  TransactionType type;
  DateTime createdAt = DateTime.now();

  Transaction({
    required this.title,
    required this.category,
    required this.amount,
    required this.type,
  });
}
