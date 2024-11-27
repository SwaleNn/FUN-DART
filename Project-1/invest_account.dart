import 'account.dart';
import 'enum.dart';

class InvestAccount extends Account {
  int investedBalance;

  InvestAccount({
    required String accountName,
    required String accountId,
    required AccountType accountType,
    required int balance,
    required DateTime openingDate,
    DateTime? closingDate,
    required this.investedBalance,
  }) : super(
          accountName: accountName,
          accountId: accountId,
          accountType: accountType,
          balance: balance,
          openingDate: openingDate,
          closingDate: closingDate,
        );

  int getCurrentInvestedBalance() => investedBalance;

  @override
  int getCurrentBalance() => super.getCurrentBalance();

  @override
  int deposit(int amount) {
    if (amount > 1000000) {
      balance = balance + amount + 25000;
    } else {
      balance += amount;
    }
    return balance;
  }

  @override
  int withdraw(int amount) {
    int calculateTax = (amount * 0.025).floor();
    if (balance < amount + calculateTax) {
      throw Exception("You don't have enough money.");
    } else {
      balance = balance - (amount + calculateTax);
      return balance;
    }
  }

  int buyStock(int amount) {
    if (balance < amount) {
      throw Exception("You don't have enough money.");
    } else {
      int calculateTax = (amount * 0.001).floor();
      balance = balance - (amount + calculateTax);
      investedBalance = amount;
      return balance;
    }
  }

  int sellStock(int amount) {
    if (investedBalance < amount) {
      throw Exception("You don't have enough invested balance.");
    } else {
      int calculateTax = (amount * 0.001).floor();
      investedBalance -= amount;
      balance = balance + amount - calculateTax;
      return balance;
    }
  }
}