class MovieModel {
  int id;
  String title;
  String img;
  String description;
  List<String> genres;
  num rating;
  num runtime;
  num year;

  MovieModel({
    required this.id,
    required this.title,
    this.img = 'https://cdn.pixabay.com/photo/2021/11/03/08/24/baskets-6765014_1280.jpg',
    required this.description,
    this.genres = const [],
    required this.rating,
    required this.runtime,
    required this.year,
  });

  // creation of DTO inside our model
  factory MovieModel.fromJson(Map<String, dynamic> json) {
  try {
    return MovieModel(
      id: json['id'] as int,
      title: json['title'] as String,
      description: json['summary'] as String,
      runtime: json['runtime'] as num,
      year: json['year'] as num,
      rating: json['rating'] as num,
      genres: (json['genres'] as List<dynamic>).map((v) => v.toString()).toList(),
      // img: json['background_image'] as String, // Uncomment if needed
    );
  } catch (e) {
    throw const FormatException('Format not supported.');
  }
}

}

