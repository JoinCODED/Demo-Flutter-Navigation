import 'package:flutter/material.dart';
import 'package:flutter_movies_list/models/movies.dart';
import 'package:go_router/go_router.dart';

class MoviesList extends StatelessWidget {
  const MoviesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 234, 234),
      appBar: AppBar(
        title: Text("Movies"),
        backgroundColor: Colors.red,
        elevation: 0,
      ),
      body: ListView.builder(
          itemCount: Movie.movies.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                GoRouter.of(context)
                    .push('/details', extra: Movie.movies[index]);
              },
              child: Container(
                height: 100,
                child: Card(
                  margin: EdgeInsets.only(right: 10, left: 10, top: 5),
                  elevation: 0,
                  child: Row(
                    children: [
                      Image.asset(Movie.movies[index].image),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          Movie.movies[index].name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
