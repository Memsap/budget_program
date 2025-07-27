# 💼 Dart Budget Planner Program

A clean and professional 3D-style Dart console application designed to help manage **monthly income**, **expenses**, and **financial planning**.

## 📌 Features

- Monthly income tracking
- Dynamic expense categorization (e.g., housing, dining, clothing)
- Remaining balance calculation
- Future savings estimation based on income
- Dry date estimation when funds might run out

## 📊 Sample Data

- **Monthly Income**: KES 200,000
- **Expenses**:
  - Rent: KES 45,000
  - Dining (Luxury Restaurants): KES 25,000
  - Designer Clothing: KES 20,000
  - Travel & Vacations: KES 30,000
  - Entertainment & Subscriptions: KES 10,000
  - Gym & Wellness: KES 8,000
  - Utilities & Bills: KES 7,000
  - Gadgets & Accessories: KES 15,000

## 🧮 Core Concepts Used

- **Variables**: For income, expenses, savings, and balance
- **Data Types**: `int`, `double`, `String`, `Map`
- **Arithmetic Operators**: For calculating total expenses and savings
- **Functions**:
  - `calculateTotalExpenses()`
  - `calculateBalance()`
  - `estimateDryDate()`
  - `planForFuture()`

## 🚀 How to Run

1. Copy the Dart code into [DartPad.dev](https://dartpad.dev)
2. Click **Run**
3. View the output in the console

## 📂 Code Preview

```dart
void main() {
  int income = 200000;

  Map<String, int> expenses = {
    'Rent': 45000,
    'Luxury Dining': 25000,
    'Designer Clothing': 20000,
    'Travel & Vacations': 30000,
    'Entertainment & Subscriptions': 10000,
    'Gym & Wellness': 8000,
    'Utilities & Bills': 7000,
    'Gadgets & Accessories': 15000,
  };

  int calculateTotalExpenses(Map<String, int> expenses) {
    return expenses.values.reduce((a, b) => a + b);
  }

  int calculateBalance(int income, int totalExpenses) {
    return income - totalExpenses;
  }

  void estimateDryDate(int income, int totalExpenses) {
    double dailySpending = totalExpenses / 30;
    double daysCovered = income / dailySpending;
    print("🗓 Estimated Dry Date: ${daysCovered.floor()} days into the month.");
  }

  void planForFuture(int income, int totalExpenses) {
    double saveRate = 0.15;
    double savings = income * saveRate;
    print("💰 Recommended Monthly Savings: KES ${savings.toStringAsFixed(2)}");
  }

  int totalExpenses = calculateTotalExpenses(expenses);
  int balance = calculateBalance(income, totalExpenses);

  print("==== Budget Summary ====");
  print("Income: KES $income");
  print("Total Expenses: KES $totalExpenses");
  print("Remaining Balance: KES $balance\n");

  estimateDryDate(income, totalExpenses);
  planForFuture(income, totalExpenses);
}
