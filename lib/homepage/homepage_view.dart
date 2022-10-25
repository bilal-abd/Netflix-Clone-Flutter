import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/homepage/api.dart';
import 'package:movie_app/homepage/homepage_controller.dart';
import 'package:movie_app/homepage/homepage_model.dart';

class Home extends GetView<HomePageController> {
 const Home({super.key});



 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: controller.obx((state) => Container()),
    );
  }
}
