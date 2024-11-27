import 'enum.dart';

abstract class Account {
  String accountName;
  String accountId;
  AccountType accountType;
  int balance;
  DateTime openingDate;
  DateTime? closingDate;

  Account({
    required this.accountName,
    required this.accountId,
    required this.accountType,
    required this.balance,
    required this.openingDate,
    this.closingDate,
  });

  int withdraw(int amount) {
    if (balance < amount) {
      throw Exception("Saldo Anda Tidak Cukup.");
    } else {
      balance -= amount;
      return balance;
    }
  }

  int deposit(int amount) {
    balance += amount;
    return balance;
  }

  int getCurrentBalance() => balance;
}