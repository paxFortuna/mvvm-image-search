// import 'package:mvvm_image_search_app/data/source_data/pixabay_api.dart';

import 'package:mvvm_image_search_app/utils/result.dart';

import '../model/photo.dart';

abstract class PhotoRepository {
  // Future<List<Photo>> getImages(String query);
  Future<Result<List<Photo>>> getImages(String query);
}