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

enum AccountType {
  saving,
  invest,
  general,
}

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
