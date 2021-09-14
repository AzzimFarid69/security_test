class SavingsAccountModel {
  final String accountNum;
  final String accountBalance;
  final String availableBalance;

  SavingsAccountModel(
    this.accountNum,
    this.accountBalance,
    this.availableBalance,
  );
}

class LoanAccountModel {
  final String accountNum;
  final String balance;

  LoanAccountModel(
    this.accountNum,
    this.balance,
  );
}
