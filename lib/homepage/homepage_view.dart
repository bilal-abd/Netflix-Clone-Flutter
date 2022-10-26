import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:movie_app/homepage/homepage_controller.dart';

class Home extends GetView<HomePageController> {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(66, 6, 3, 61),
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/7/7a/Logonetflix.png',
                fit: BoxFit.cover,
                height: 40),
          ])),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Les films les plus populaires",
              style: GoogleFonts.ubuntu(
                  textStyle: TextStyle(color: Colors.white, fontSize: 25)),
            ),
            controller.obx(
              (state) => SizedBox(
                height: 300,
                width: 800,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.movieList.length,
                  itemBuilder: (context, index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.network(
                            "https://image.tmdb.org/t/p/w440_and_h660_face${controller.movieList[index].posterPath}"),
                      ],
                    );

                    const SizedBox(
                      height: 20.0,
                    );
                  },
                ),
              ),
            ),
            Text(
              "Les films les mieux notés",
              style: GoogleFonts.ubuntu(
                  textStyle: TextStyle(color: Colors.white, fontSize: 25)),
            ),
            controller.obx(
              (state) => SizedBox(
                height: 300,
                width: 800,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.topRatedMovieList.length,
                  itemBuilder: (context, index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.network(
                            "https://image.tmdb.org/t/p/w440_and_h660_face${controller.topRatedMovieList[index].posterPath}"),
                      ],
                    );

                    const SizedBox(
                      height: 20.0,
                    );
                  },
                ),
              ),
            ),
            Text(
              "Les films sorti récemment",
              style: GoogleFonts.ubuntu(
                  textStyle: TextStyle(color: Colors.white, fontSize: 25)),
            ),
            controller.obx(
              (state) => SizedBox(
                height: 300,
                width: 800,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.nowPlayingList.length,
                  itemBuilder: (context, index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.network(
                            "https://image.tmdb.org/t/p/w440_and_h660_face${controller.nowPlayingList[index].posterPath}"),
                      ],
                    );

                    const SizedBox(
                      height: 20.0,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
