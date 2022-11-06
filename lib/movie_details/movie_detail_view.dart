import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:movie_app/homepage/homepage_controller.dart';
import 'package:movie_app/movie_details/movie_detail_controller.dart';

class MovieDetail extends GetView<MovieDetailController> {
  const MovieDetail({super.key});

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
        body: Column(
          children: [
            Container(
              width: 300,
              child: Image.network(""),
            )
          ],
        ));
  }
}
