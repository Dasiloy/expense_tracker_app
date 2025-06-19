import "package:expense_tracker_app/widgets/expense/expense_list_widget.dart";
import "package:expense_tracker_app/models/expense.dart";
import "package:flutter/material.dart";

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() {
    return _AppState();
  }
}

class _AppState extends State<App> {
  final _expenses = Expense.createDummy();

  void onClickAdd() {
    // implement
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.deepPurple,
        title: Text("Expense Tracker"),
        centerTitle: false,
        actions: [IconButton(onPressed: onClickAdd, icon: Icon(Icons.add))],
      ),
      body: Column(children: [ExpenseListWidget(expenses: _expenses)]),
    );
  }
}
