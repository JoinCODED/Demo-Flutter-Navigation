# Movies List With Details

## What is this demo?
   This demo will show the students how to navigate between pages in Flutter and pass data. 

## What are the objectives?
    Students will be able to navigate in app and pass data along the pages.

## Steps
### Part 1: Navigating between pages 
1. Create a new file in pages folder called movie details
2. Create a widget inside it 
3. Add a title and an image and rating (use static data)
4. Add `flutter pub add go_router`
5. In main outside build at the end of the class create a instance of the router ` final _router = GoRouter();`
6. Define the routes you have 
``` dart 
final _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
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
9. Add in the on tap function ` context.push("/ROUTE_YOU_WANT");` 

### Part 2: Passing Data
1. Now lets pass the correct movie to the other page
2. in MovieDetails page create a movie variable that is initially empty (before your build)
3. Fix the Constructor Cmd+.
4. in List widget pass the movie as an extra `context.push("/ROUTE_YOU_WANT",extra : Movie.movies[index]);`
5. Go to Main to fix the error by fixing the GoRouter and adding this in the movie route ` builder: (context, state) => MoviePage(movie: state.extra as Movie),`
6. Fix the movieDetails page by adding all the values from the movie 


### 