import 'account.dart';
import 'enum.dart';

class SavingAccount extends Account {
  SavingAccount(
      {required String accountName,
      required String accountId,
      required AccountType accountType,
      required int balance,
      required DateTime openingDate,
      DateTime? closingDate})
      : super(
          accountName: accountName,
          accountId: accountId,
          accountType: accountType,
          balance: balance,
          openingDate: openingDate,
          closingDate: closingDate,
        );

  @override
  int getCurrentBalance() => super.getCurrentBalance();

  @override
  int deposit(int amount) {
    if (amount > 500000) {
      int interest = (amount * 0.01).floor();
      balance = balance + amount + interest;
    } else {
      balance += amount;
    }

    return balance;
  }

  @override
  int withdraw(int amount) {
    if (DateTime.now().difference(openingDate).inDays < 90) {
      throw Exception("You can withdraw after 90 days");
    } else {
      if (balance < amount) {
        throw Exception("Your balance isn't enough.");
      } else {
        balance -= amount;
        return balance;
      }
    }
  }

  int getInterest() {
    int interest = (balance * 0.04).floor();
    balance += interest;
    return balance;
  }
}