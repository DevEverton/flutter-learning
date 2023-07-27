import 'package:expense_tracker/Views/Components/expenses_list.dart';
import 'package:expense_tracker/Mocks/expenses_mock.dart';
import 'package:flutter/material.dart';
import '../models/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _expenses = ExpensesMock.generateMockExpensesList();

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(title: Text("Expenses Tracker")),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Text("Chart"),
        Expanded(child: ExpensesList(expenses: _expenses)),
      ]),
    );
  }
}
