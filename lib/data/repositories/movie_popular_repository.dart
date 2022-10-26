import 'package:dio/dio.dart';
import 'package:http/http.dart';
import 'package:movie_app/data/models/movie.dart';

class MovieRepository {
  MovieRepository();

  Future<List<Movie>> getAllMovie() async {
    try {
      var response = await Dio().get(
        'https://api.themoviedb.org/3/movie/popular',
        queryParameters: {"api_key": "b7aec811fb276e1e7b9a0a3a5a7591e4"},
      );
      List<Movie> movieList = response.data['results']
          .map<Movie>((movie) => Movie.fromJson(movie))
          .toList();
      return movieList;
    } catch (e) {
      print(e);
      return [];
    }
  }

  Future<List<Movie>> getTopRatedMovie() async {
    try {
      var response = await Dio().get(
        'https://api.themoviedb.org/3/movie/top_rated',
        queryParameters: {"api_key": "b7aec811fb276e1e7b9a0a3a5a7591e4"},
      );
      List<Movie> movieList = response.data['results']
          .map<Movie>((movie) => Movie.fromJson(movie))
          .toList();
      return movieList;
    } catch (e) {
      print(e);
      return [];
    }
  }
}
