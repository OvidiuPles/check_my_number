import 'package:flutter/material.dart';
import 'package:tema3/movies/movie_api.dart';
import 'package:tema3/movies/movie_model.dart';

class MoviesPage extends StatefulWidget {
  const MoviesPage({super.key});

  @override
  State<MoviesPage> createState() => _MoviesPageState();
}

class _MoviesPageState extends State<MoviesPage> {
  final List<MovieModel> movies = <MovieModel>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('title'),
        centerTitle: true,
        elevation: 0,
        actions: <Widget>[
          IconButton(
            onPressed: () async {
              final MovieApi api = MovieApi();

              final List<MovieModel>? apiResponse = await api.getMovies();

              if (apiResponse != null) {
                setState(() {
                  movies.addAll(apiResponse);
                });
              }
            },
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (BuildContext context, int index) {
          final MovieModel movie = movies[index];

          return Text(movie.title);
        },
      ),
    );
  }
}
