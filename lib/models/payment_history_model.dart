class PaymentHistoryModel {
  final String date;
  final String billNo;
  final String refNo;
  final String amount;
  final String status;
  final String type;

  PaymentHistoryModel(
    this.date,
    this.billNo,
    this.refNo,
    this.amount,
    this.status,
    this.type,
  );
}
