import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem({super.key, required this.expense});

  final Expense expense;

  @override
  Widget build(context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(expense.title),
          const SizedBox(
            height: 16,
          ),
          Row(children: [
            Text("\$ ${expense.amount.toStringAsFixed(2)}"),
            const Spacer(),
            Row(children: [
              Text(DateFormat.yMd().add_jm().format(expense.date).toString()),
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Icon(Icons.alarm)),
            ])
          ])
        ]),
      ),
    );
  }
}
