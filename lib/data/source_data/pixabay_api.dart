import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;


import '../model/photo.dart';

class PixabayApi{

  Future<List<Photo>> getImages(String query) async {
    Uri url = Uri.parse(
        'https://pixabay.com/api/?key=26655862-d25160d651ed15b14be08cf35&q'
            '=$query&image_type=photo');
    http.Response response = await http.get(url);
    print('Response status: ${response.statusCode}');

    String jsonString = response.body;
    Map<String, dynamic> json = jsonDecode(jsonString);
    List<dynamic> hits = json['hits'];
    List<Photo> items = hits.map((e) => Photo.fromJson(e)).toList();
    return items;
  }
}

