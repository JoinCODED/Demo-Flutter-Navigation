import 'package:flutter/material.dart';

import '../models/movies.dart';

class MovieDetail extends StatelessWidget {
  const MovieDetail({Key? key, required this.movie}) : super(key: key);
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.name),
        backgroundColor: Colors.red,
        elevation: 0,
      ),
      body: Center(
        child: Column(children: [
          Image.asset(
            movie.image,
            width: 300,
            height: 400,
            fit: BoxFit.contain,
          ),
          Container(
              margin: EdgeInsets.all(15),
              child: Text("Rating: ${movie.rating}",
                  style: TextStyle(fontSize: 25)))
        ]),
      ),
    );
  }
}
