import 'dart:ffi';

import 'package:get/get.dart';
import 'package:movie_app/data/repositories/movie_popular_repository.dart';

import '../data/models/movie.dart';

class MovieDetailController extends GetxController with StateMixin {
  MovieRepository movieRepository;
  MovieDetailController({required this.movieRepository});
  List<Movie> movieList = [];
  List<Movie> topRatedMovieList = [];
  List<Movie> nowPlayingList = [];

  final index = Get.arguments as int;

  // @override
  // Future<void> onInit() async {
  //   change(null, status: RxStatus.loading());
  //   movieList = await movieRepository.getAllMovie();
  //   change(null, status: RxStatus.success());

  //   super.onInit();
  // }
  @override
  Future<void> onInit() async {
    change(null, status: RxStatus.loading());
    movieList = await movieRepository.getAllMovie();
    topRatedMovieList = await movieRepository!.getTopRatedMovie();
    nowPlayingList = await movieRepository!.getAllNowPlaying();

    change(null, status: RxStatus.success());

    super.onInit();
  }
}