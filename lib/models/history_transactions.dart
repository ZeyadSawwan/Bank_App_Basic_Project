class HistoryTransactions {
  double price;
  String brand;
  String currency;
  String date;

  HistoryTransactions({
    required this.price,
    required this.brand,
    this.currency = "\$ ",
    required this.date,
  });
}
