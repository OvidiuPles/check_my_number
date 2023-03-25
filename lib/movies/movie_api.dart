import 'dart:convert';

import 'package:http/http.dart';
import 'package:tema3/movies/movie_model.dart';

class MovieApi {
  final Client client = Client();

  Future<List<MovieModel>?> getMovies() async {
    final Uri url = Uri.https(
      'yts.mx',
      'api/v2/list_movies.json',
      <String, dynamic>{
        'limit': '5',
      },
    );

    final Response response = await client.get(url);

    if (response.statusCode != 200) {
      return null;
    }

    final Map<String, dynamic> body = jsonDecode(response.body) as Map<String, dynamic>;

    final List<dynamic> listMovies = (body['data'] as Map<String, dynamic>)['movies'] as List<dynamic>;

    final List<MovieModel> listMovieModels = listMovies.map((dynamic json) {
      return MovieModel.fromJson(json as Map<String, dynamic>);
    }).toList();

    return listMovieModels;
  }
}
