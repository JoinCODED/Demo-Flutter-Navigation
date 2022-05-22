# Movies List

## What is this demo?
    In this demo List of objects id coverd in Dart and ListView in Flutter.

## What are the objectives?
    The student must learn how to create a list of objects and view them in a Flutter app.

## Steps

### Part 1: Dart Lists
1. Create a model folder
2. Create Class Movies with `name,image,rating`
3. Create a constructor 
4. Make properties required 
5. Create an assets folder and add images to it
6. Add it to pubspec.yaml
7. Create a static List of movies 
8. Create a main function 
9. Loop through them and print in console

### Part 2: Flutter ListView
1.  Create a pages folder in lib folder 
2.  Create a file called MovieList and make it a widget
3.  Add a Scaffold and an App bar 
4.  Add it to main to test
5.  Add body to Scaffold and add ListView.builder
6.  Add itemCount
7.  Add `(context, index){}` function
8.  Return a Card with `Text(Movie.movies[0].name)` 
9.  See how many times its repeted! its how long movies list is!
10. Replace 0 with index
11. Add images 
