import 'package:nanoid2/nanoid2.dart';

enum ExpenseCategory { food, travel, leisure, work }

class Expense {
  final String id;
  final String title;
  final num amount;
  final DateTime date;
  final ExpenseCategory category;

  const Expense._({
    required this.id,
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  });

  factory Expense.create({
    required String title,
    required String amount,
    required DateTime date,
    required ExpenseCategory category,
  }) {
    return Expense._(
      id: nanoid(),
      title: title,
      date: date,
      category: category,
      amount: num.parse(amount),
    );
  }
}
