import "package:intl/intl.dart";
import 'package:nanoid2/nanoid2.dart';
import 'package:flutter/material.dart';

enum ExpenseCategory { food, travel, leisure, work }

DateFormat _dateFormatter = DateFormat.yMd();

Map<ExpenseCategory, IconData> _icons = const {
  ExpenseCategory.food: Icons.lunch_dining,
  ExpenseCategory.travel: Icons.flashlight_off,
  ExpenseCategory.leisure: Icons.movie,
  ExpenseCategory.work: Icons.work,
};

class Expense {
  final String id;
  final String title;
  final num amount;
  final DateTime date;
  final ExpenseCategory category;

  static List<Expense> createDummy() {
    return [
      Expense(
        title: 'Lunch',
        amount: '15.50',
        date: DateTime.now().subtract(Duration(days: 1)),
        category: ExpenseCategory.food,
      ),
      Expense(
        title: 'Uber Ride',
        amount: '30.00',
        date: DateTime.now().subtract(Duration(days: 2)),
        category: ExpenseCategory.travel,
      ),
      Expense(
        title: 'Netflix Subscription',
        amount: '10.99',
        date: DateTime.now().subtract(Duration(days: 3)),
        category: ExpenseCategory.leisure,
      ),
      Expense(
        title: 'Office Supplies',
        amount: '45.00',
        date: DateTime.now().subtract(Duration(days: 4)),
        category: ExpenseCategory.work,
      ),
    ];
  }

  Expense({
    required this.title,
    required this.date,
    required this.category,
    required amount,
  }) : id = nanoid(),
       amount = num.parse(amount);

  String get formatedDate {
    return _dateFormatter.format(date);
  }

  IconData get categoryIcon {
    return _icons[category]!;
  }
}
