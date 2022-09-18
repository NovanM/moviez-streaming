part of 'model.dart';
class Movie {
  String title;
  List genreStyles;
  double rating;
  String imagePath;
  Movie(
      {required this.title,
      required this.genreStyles,
      required this.rating,
      required this.imagePath});
}

var movieList = [
  Movie(
      title: "John Wick 4",
      genreStyles: ["Action", "Crime"],
      rating: 5.0,
      imagePath: "assets/images/image3.png"),
  Movie(
      title: "Bohemian",
      genreStyles: ["Documentary"],
      rating: 3.0,
      imagePath: "assets/images/image4.png"),
  Movie(
      title: "Mulan Session",
      genreStyles: ["History", "War"],
      rating: 3.0,
      imagePath: "assets/images/image7.png"),
  Movie(
      title: "Beauty & Beast",
      genreStyles: ["Sci-Fiction"],
      rating: 3.0,
      imagePath: "assets/images/image6.png"),
  Movie(
      title: "The Dark II",
      genreStyles: ["Horror"],
      rating: 4.0,
      imagePath: "assets/images/image8.png"),
  Movie(
      title: "The Dark Knight",
      genreStyles: ["Heroes"],
      rating: 5.0,
      imagePath: "assets/images/image9.png"),
  Movie(
      title: "The Dark Tower",
      genreStyles: ["Action"],
      rating: 4.0,
      imagePath: "assets/images/image10.png"),
];
