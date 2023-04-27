class News {
  final List data;

  // final String category;

  News({
    required this.data,
    // required this.category
  });

  factory News.fromJson({required Map json}) {
    return News(
      data: json['data'],
      // category: json['category']
    );
  }
}
