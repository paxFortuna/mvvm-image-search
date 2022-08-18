import 'package:mvvm_image_search_app/data/source_data/pixabay_api.dart';

import '../model/photo.dart';

class PhotoRepository {
  final _api = PixabayApi();

  Future<List<Photo>> getImages(String query) async {
    return await _api.getImages(query);
  }
}