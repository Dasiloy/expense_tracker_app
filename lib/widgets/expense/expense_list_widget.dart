import 'package:flutter/material.dart';
import 'package:expense_tracker_app/models/expense.dart';
import 'package:expense_tracker_app/widgets/expense/expense_widget.dart';

class ExpenseListWidget extends StatelessWidget {
  final List<Expense> expenses;

  const ExpenseListWidget({super.key, required this.expenses});

  Expense getCurrentExpense(int index) => expenses[index];

  Widget? buildExpense(BuildContext ctx, int index) {
    Expense expense = getCurrentExpense(index);
    return ExpenseWidget(expense);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: buildExpense,
        itemCount: expenses.length,
      ),
    );
  }
}
