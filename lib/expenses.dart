import 'package:flutter/material.dart';
import 'package:expense_tracker/model/expense.dart';
import 'package:expense_tracker/expenses_list.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});
  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'flutter course',
      amount: 19.99,
      date: DateTime.now(),
      category: Category.work,
    ),
    Expense(
      title: 'cinema',
      amount: 15.69,
      date: DateTime.now(),
      category: Category.leisure,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('part 1'),
          Expanded(child: ExpensesList(expenses: _registeredExpenses))
        ],
      ),
    );
  }
}
