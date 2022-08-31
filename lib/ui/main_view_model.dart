import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:mvvm_image_search_app/data/repository/photo_repository.dart';
import 'package:mvvm_image_search_app/data/repository/photo_repository_impl.dart';
import 'package:mvvm_image_search_app/ui/main_action.dart';
import 'package:mvvm_image_search_app/ui/main_state.dart';

// import '../data/model/photo.dart';

class MainViewModel extends ChangeNotifier {
  // 데이터 저장소
  //final _photoRepository = PhotoRepository();
  late final PhotoRepository _photoRepository;

  //List<Photo> _photos = [];
  //List<Photo> get photos => UnmodifiableListView(_photos);
  // 로딩
  //bool isLoading = false;

  MainState _state = const MainState();

  MainState get state => _state;

  // 생성자 주입
  MainViewModel({PhotoRepository? photoRepository}) {
    _photoRepository = (photoRepository ?? PhotoRepositoryImpl());
    _fetchImages('');
  }

  void onAction(MainAction action) {
    // if (action is AddAction){
    //   _addAction();
    // } else if (action is GetImages) {
    //   _fetchImages(action.query);
    // }
    action.when(
      getImages: (query) {
        _fetchImages(query);
      },
      addAction: _addAction,
      refresh: () {},
    );
  }

  Future<void> _fetchImages(String query) async {
    // isLoading = true;
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    // _photos = await _photoRepository.getImages(query);
    // isLoading = false;
    final photos = await _photoRepository.getImages(query);
    _state = state.copyWith(
      photos: photos,
      isLoading: false,
    );
    notifyListeners();
  }

  void _addAction() {
    print('아이콘 클릭 됨');
  }
}
