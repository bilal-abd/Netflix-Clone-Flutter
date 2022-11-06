import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:movie_app/homepage/homepage_controller.dart';
import 'package:movie_app/movie_details/movie_detail_controller.dart';

class MovieDetailView extends GetView<MovieDetailController> {
  MovieDetailView({super.key});

  @override
  final controller1 = Get.put(HomePageController());
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: BackButton(
            onPressed: () {
              Get.back();
            },
          ),
          backgroundColor: Colors.black,
          title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/7/7a/Logonetflix.png',
                fit: BoxFit.cover,
                height: 40),
          ])),
      backgroundColor: Color.fromARGB(66, 6, 3, 61),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    "https://image.tmdb.org/t/p/w440_and_h660_face${controller1.movieList[controller.index].posterPath.toString()}"),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(bottom: 20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Titre du Film :",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.ubuntu(
                    textStyle: TextStyle(color: Colors.white, fontSize: 25)),
              ),
              Text(
                controller1.movieList[controller.index].title.toString(),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.ubuntu(
                    textStyle: TextStyle(color: Colors.white, fontSize: 25)),
              ),
            ],
          ),
          Padding(padding: EdgeInsets.only(bottom: 20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Date de Sortie :",
                style: GoogleFonts.ubuntu(
                    textStyle: TextStyle(color: Colors.white, fontSize: 25)),
              ),
              Text(
                controller1.movieList[controller.index].releaseDate.toString(),
                style: GoogleFonts.ubuntu(
                    textStyle: TextStyle(color: Colors.white, fontSize: 25)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
