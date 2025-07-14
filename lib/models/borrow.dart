
  final String id;
  final String bookId;
  final String bookTitle;
  final DateTime borrowDate;
  final DateTime? returnDate;

  Borrow({
    required this.id,
    required this.bookId,
    required this.bookTitle,
    required this.borrowDate,
    this.returnDate,
  });

  factory Borrow.fromJson(Map<String, dynamic> json) => Borrow(
    id: json['id'].toString(),
    bookId: json['bookId'].toString(),
    bookTitle: json['bookTitle'],
    borrowDate: DateTime.parse(json['borrowDate']),
    returnDate:
        json['returnDate'] != null ? DateTime.parse(json['returnDate']) : null,
  );
}
