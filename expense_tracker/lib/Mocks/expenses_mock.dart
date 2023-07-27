import 'dart:math';
import '../models/expense.dart';

class ExpensesMock {
  static List<Expense> generateMockExpensesList() {
    final List<Expense> mockExpenses = [];

    final List<String> titles = [
      'Groceries',
      'Restaurant',
      'Flight ticket',
      'Hotel',
      'Movie ticket',
      'Office supplies',
      'Gasoline',
      'Books',
      'Concert',
      'Taxi'
    ];

    final List<Category> categories = [
      Category.food,
      Category.travel,
      Category.leisure,
      Category.work
    ];

    final random = Random();

    for (int i = 0; i < 10; i++) {
      final String title = titles[random.nextInt(titles.length)];
      final double amount = (random.nextDouble() * 100 + 1).roundToDouble();
      final DateTime date =
          DateTime.now().subtract(Duration(days: random.nextInt(30)));
      final Category category = categories[random.nextInt(categories.length)];

      final Expense expense = Expense(
        title: title,
        amount: amount,
        date: date,
        category: category,
      );

      mockExpenses.add(expense);
    }

    return mockExpenses;
  }
}
