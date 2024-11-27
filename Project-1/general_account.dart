import 'account.dart';
import 'enum.dart';

class GeneralAccount extends Account {
  GeneralAccount(
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
  int deposit(int amount) => super.deposit(amount);

  @override
  int withdraw(int amount) => super.withdraw(amount);

  @override
  int getCurrentBalance() => super.getCurrentBalance();
}