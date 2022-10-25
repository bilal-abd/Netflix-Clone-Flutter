import 'package:get/get.dart';
import 'package:movie_app/data/repositories/movie_repository.dart';
import 'package:movie_app/homepage/homepage_controller.dart';

class HomePageBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => HomePageController(movieRepository: MovieRepository(),));
  }


}