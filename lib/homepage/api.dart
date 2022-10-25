import 'dart:developer';

import 'package:http/http.dart' as http;

import 'api_constants.dart';
import 'homepage_model.dart';


class ApiService {
  Future<List<Photos>?> getPhotos() async {
    try {
      var url = Uri.parse(ApiConstants.baseUrl + ApiConstants.usersEndpoint);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        List<Photos> _model = photosFromJson(response.body);
        return _model;
      }
    } catch (e) {
      log(e.toString());
    }
  }
}