void main() {
  // Monthly income
  double income = 200000;

  // Monthly expenses
  double rent = 65000;
  double dining = 25000; // Fine dining, gourmet experiences
  double designerClothes = 30000; // Louis Vuitton, Off-White, etc.
  double skincare = 10000; // High-end products
  double gymMembership = 8000; // Premium club
  double transport = 12000; // Private rides, fuel
  double entertainment = 15000; // Concerts, subscriptions
  double techGadgets = 10000; // Latest devices and accessories

  double totalExpenses = rent + dining + designerClothes + skincare + gymMembership + transport + entertainment + techGadgets;

  // Calculate balance and savings
  double balance = income - totalExpenses;
  double suggestedSavings = income * 0.2; // Save 20% of income

  print("Monthly Budget Summary");
  print("=======================");
  print("Income: KES $income");
  print("\nExpenses:");
  print("- Rent: KES $rent");
  print("- Fine Dining: KES $dining");
  print("- Designer Clothes: KES $designerClothes");
  print("- Skincare: KES $skincare");
  print("- Premium Gym: KES $gymMembership");
  print("- Transport: KES $transport");
  print("- Entertainment: KES $entertainment");
  print("- Tech & Gadgets: KES $techGadgets");
  print("\nTotal Expenses: KES $totalExpenses");

  print("\nBalance after expenses: KES $balance");

  if (balance >= suggestedSavings) {
    print("You are on track. Consider saving at least KES $suggestedSavings this month.");
  } else {
    print("Your expenses are high. Review spending or reduce non-essential luxuries.");
  }

  estimateDryDate(income, totalExpenses);
  planForFuture(income, totalExpenses);
}

void estimateDryDate(double income, double expenses) {
  int daysInMonth = 30;
  double dailyExpense = expenses / daysInMonth;
  double daysBeforeDry = income / dailyExpense;

  print("\nEstimated financial sustainability: ${daysBeforeDry.toStringAsFixed(1)} days.");
}

void planForFuture(double income, double expenses) {
  double emergencyFund = income * 0.3;
  double investmentFund = income * 0.15;

  print("\nRecommended Planning:");
  print("- Build an emergency fund: KES $emergencyFund");
  print("- Allocate for investments: KES $investmentFund");
}