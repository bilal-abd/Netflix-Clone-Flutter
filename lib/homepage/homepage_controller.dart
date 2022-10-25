import 'dart:ffi';

import 'package:get/get.dart';
import 'package:movie_app/data/repositories/movie_repository.dart';

import 'api.dart';
import 'homepage_model.dart';

class HomePageController extends GetxController with StateMixin {

  MovieRepository movieRepository;
  HomePageController({required this.movieRepository});

  
  @override 
  Future<void> onInit() async {
    change(null, status: RxStatus.loading());
   await movieRepository.getAllMovie();
   change(null, status: RxStatus.success());
   
    super.onInit();
  }
}