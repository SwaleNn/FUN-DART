import 'enum.dart';
import 'general_account.dart';
import 'invest_account.dart';
import 'saving_account.dart';

void main() {
  var putraGA = GeneralAccount(
    accountName: "Alwindi",
    accountId: "Alwindi10",
    accountType: AccountType.general,
    balance: 500000,
    openingDate: DateTime(2024, 1, 15),
  );

  var putraSA = SavingAccount(
    accountName: "Alwindi",
    accountId: "Alwindi11",
    accountType: AccountType.saving,
    balance: 5000000,
    openingDate: DateTime(2024, 1, 15),
  );

  var putraIA = InvestAccount(
    accountName: "Alwindi",
    accountId: "Alwindi12",
    accountType: AccountType.invest,
    balance: 25000000,
    openingDate: DateTime.now(),
    investedBalance: 0,
  );

  print("General Account Name: ${putraGA.accountName}");
  print("General Account ID: ${putraGA.accountId}");
  print("General Account current balance: ${putraGA.getCurrentBalance()}");

  print("Deposit 500000. current balance: ${putraGA.deposit(500000)}");
  print("Withdraw 100000. current balance: ${putraGA.withdraw(100000)}");

  print("\n==============================================================\n");

  print("Saving Account Name: ${putraSA.accountName}");
  print("Saving Account ID: ${putraSA.accountId}");
  print("Saving Account current balance: ${putraSA.getCurrentBalance()}");

  print("Deposit 500000. current balance: ${putraSA.deposit(500000)}");
  print("Withdraw 100000. current balance: ${putraSA.withdraw(100000)}");
  print("Get interst. current balance: ${putraSA.getInterest()}");

  print("\n==============================================================\n");

  print("Invest Account Name: ${putraIA.accountName}");
  print("Invest Account ID: ${putraIA.accountId}");
  print("Invest Account current balance: ${putraIA.getCurrentBalance()}");
  print(
      "Invest Account current Invested balance: ${putraIA.getCurrentInvestedBalance()}");

  print("Deposit 500000. current balance: ${putraIA.deposit(500000)}");
  print("Withdraw 100000. current balance: ${putraIA.withdraw(100000)}");
  print("Buy Stock 1000000. current balance: ${putraIA.buyStock(1000000)}");
  print(
      "Invest Account current Invested balance: ${putraIA.getCurrentInvestedBalance()}");
  print("Sell Stock 500000. current balance: ${putraIA.sellStock(500000)}");
  print(
      "Invest Account current Invested balance: ${putraIA.getCurrentInvestedBalance()}");
}
