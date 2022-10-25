import 'package:dio/dio.dart';

class MovieRepository {
  MovieRepository();


Future<void> getAllMovie() async {

  try {
    var response = await Dio().get('https://api.themoviedb.org/3/movie/popular',queryParameters:{ "api_key": "b7aec811fb276e1e7b9a0a3a5a7591e4"}, );
    print(response);
  } catch (e) {
    print(e);
  }


}



}