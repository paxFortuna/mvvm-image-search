import 'dart:async';
import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:mvvm_image_search_app/data/repository/photo_repository.dart';
import 'package:mvvm_image_search_app/data/repository/photo_repository_impl.dart';
import 'package:mvvm_image_search_app/ui/main_action.dart';
import 'package:mvvm_image_search_app/ui/main_state.dart';
import 'package:mvvm_image_search_app/ui/main_ui_event.dart';

// import '../data/model/photo.dart';

class MainViewModel extends ChangeNotifier {
  // 데이터 저장소
  late final PhotoRepository _photoRepository;

  MainState _state = const MainState();

  MainState get state => _state;

  // 간단한 에러 처리 위한 StreamController
  //final _evenController = StreamController<String>();
  final _evenController = StreamController<MainUiEvent>();

  //Stream<String> get evenStream => _evenController.stream;
  Stream<MainUiEvent> get evenStream => _evenController.stream;

  // 생성자 주입
  MainViewModel({PhotoRepository? photoRepository}) {
    _photoRepository = (photoRepository ?? PhotoRepositoryImpl());
    _fetchImages('');
  }

  void onAction(MainAction action) {
    action.when(
      getImages: (query) {
        if (query.isEmpty){
          // _evenController.add('검색어를 입력해 주세요');
          _evenController.add(const MainUiEvent.showDialog('검색어를 입력해주세요'));
          return;
        }
        _fetchImages(query);
      },
      addAction: _addAction,
      refresh: () {},
    );
  }

  Future<void> _fetchImages(String query) async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    // final photos = await _photoRepository.getImages(query);
    // _state = state.copyWith(
    //     photos: photos,
    //     isLoading: false,

    final result = await _photoRepository.getImages(query);
    result.when(
      success: (photos){
        _state = state.copyWith(
          photos: photos,
          isLoading: false,
        );
        notifyListeners();
      },
      error: (message){
        _state = state.copyWith(
          photos: [],
          isLoading: false,
        );
        notifyListeners();
        //_evenController.add(message);
        _evenController.add(MainUiEvent.showSnackBar(message));
      }
    );
  }

  void _addAction() {
    print('아이콘 클릭 됨');
  }
}
