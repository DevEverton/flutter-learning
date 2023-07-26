import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  @override
  Widget build(context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Expenses Tracker")),
        body: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Chart",
                textAlign: TextAlign.center,
              ),
              Text(
                "Expenses list",
                textAlign: TextAlign.center,
              ),
            ]));
  }
}
