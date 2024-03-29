# Movies List With Details

## What is this demo?
   This demo will show the students how to navigate between pages in Flutter and pass data. 

## What are the objectives?
    Students will be able to navigate in app and pass data along the pages.

## Steps
### Part 1: Navigating between pages 
1. Go through the![Untitled_1](https://user-images.githubusercontent.com/52189918/169860043-73d6ddae-19c4-437b-ba68-be426ffb72ac.jpg)
 house metaphore example
2. 
3. Create a new file in pages folder called movie details
4. Paste this 
```dart 
import 'package:flutter/material.dart';

import '../models/movies.dart';

class MovieDetail extends StatelessWidget {
  const MovieDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Harry potter"),
        backgroundColor: Colors.red,
        elevation: 0,
      ),
      body: Center(
        child: Column(children: [
          Image.asset(
            "assets/harrypotter.jpeg",
            width: 300,
            height: 400,
            fit: BoxFit.contain,
          ),
          Container(
              margin: EdgeInsets.all(15),
              child: Text("Rating: 5", style: TextStyle(fontSize: 25)))
        ]),
      ),
    );
  }
}
```
5. Check how it looks like by adding it in main
6. Add `flutter pub add go_router` and go to yaml file talk about libraries
7. In main outside build at the end of the class create a instance of the router ` final _router = GoRouter();`
8. Define the routes you have ( emphasis on GoRouter and GoRoute diffrence) mentioning that GoRoute is going to a scaffold widget
``` dart 
final _router = GoRouter(
    routes: [
      GoRoute(
        path: '/', // this is the root page 
        builder: (context, state) => MoviesList(),
      ),
      GoRoute(
        path: '/movie',
        builder: (context, state) => MoviePage(),
      ),
    ],
  );
  ```
7. Modify MaterialApp to this 
``` dart 
@override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        routeInformationParser: _router.routeInformationParser,
        routerDelegate: _router.routerDelegate,
      );
  }
  ```
8. Add an Inkwell on the Containers in the movieList
9. Import GoRouter in Detail page
10. Add in the on tap function ` context.push("/ROUTE_YOU_WANT");` 

### Part 2: Passing Data
1. Now lets pass the correct movie to the other page Mentinoing the objective of transferring data 
2. in MovieDetails page create a movie variable that is initially empty (before your build)
3. Fix the Constructor Cmd+.
4. in List widget pass the movie as an extra `context.push("/ROUTE_YOU_WANT",extra : Movie.movies[index]);`
5. Go to Main to fix the error by fixing the GoRouter and adding this in the movie route ` builder: (context, state) => MoviePage(movie: state.extra as Movie),`
6. Fix the movieDetails page by adding all the values from the movie 


### 
