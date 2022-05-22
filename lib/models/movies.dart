class Movie {
  String name;
  String image;
  int rating;

  Movie({required this.name, required this.image, required this.rating});

  static List<Movie> movies = [
    Movie(name: "Harry Potter", image: "assets/harrypotter.jpeg", rating: 3),
    Movie(name: "Chicken Run", image: "assets/chickenrun.jpeg", rating: 5),
    Movie(name: "Ant Man", image: "assets/antman.jpg", rating: 4),
    Movie(
        name: "The Imetatation Game",
        image: "assets/imetationgame.jpg",
        rating: 4),
    Movie(name: "Intersteller", image: "assets/intersteller.jpeg", rating: 5)
  ];
}
