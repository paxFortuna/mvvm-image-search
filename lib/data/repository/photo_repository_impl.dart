import 'package:mvvm_image_search_app/data/model/photo.dart';
import 'package:mvvm_image_search_app/data/repository/photo_repository.dart';
import 'package:mvvm_image_search_app/data/source_data/pixabay_api.dart';

class PhotoRepositoryImpl implements PhotoRepository {

  final _api = PixabayApi();

  @override
  Future<List<Photo>> getImages(String query) async {
    return await _api.getImages(query);
  }

}