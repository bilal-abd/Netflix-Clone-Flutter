import 'package:get/get.dart';
import 'package:movie_app/data/repositories/movie_popular_repository.dart';
import 'package:movie_app/movie_details/movie_detail_controller.dart';

class MovieDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MovieDetailController(
          movieRepository: MovieRepository(),
        ));
  }
}