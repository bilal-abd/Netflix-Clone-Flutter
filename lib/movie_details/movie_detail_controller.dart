import 'dart:ffi';

import 'package:get/get.dart';
import 'package:movie_app/data/repositories/movie_popular_repository.dart';

import '../data/models/movie.dart';

class MovieDetailController extends GetxController with StateMixin {
  MovieRepository movieRepository;
  String name = "";
  String title = "";

  MovieDetailController(
      {required this.movieRepository, required this.name, required this.title});
  List<Movie> movieList = [];

  @override
  Future<void> onInit() async {
    change(null, status: RxStatus.loading());
    movieList = await movieRepository.getAllMovie();
    change(null, status: RxStatus.success());

    super.onInit();
  }
}
