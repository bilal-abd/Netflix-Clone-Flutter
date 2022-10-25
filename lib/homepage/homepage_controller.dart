import 'package:get/get.dart';

import 'api.dart';
import 'homepage_model.dart';

class HomePageController extends GetxController {
  late List<Photos>? _photolist = [];
  HomePageController();

  
  void _getData() async {
    _photolist = (await ApiService().getPhotos())!;
   

}
}