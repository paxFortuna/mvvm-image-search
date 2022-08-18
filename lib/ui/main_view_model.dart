import 'package:flutter/material.dart';
import 'package:mvvm_image_search_app/data/repository/photo_repository.dart';

import '../data/model/photo.dart';

class MainViewModel extends ChangeNotifier {
  // 데이터 저장소
  final _photoRepository = PhotoRepository();
  // 데이터
  List<Photo> images = [];
  // 로딩
  bool isLoading = false;

  void fetchImage(String query) async {
    isLoading = true;
    notifyListeners();

    images = await _photoRepository.getImages(query);
    isLoading = false;
    notifyListeners();
  }
}