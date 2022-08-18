import 'package:flutter/material.dart';
import 'package:mvvm_image_search_app/ui/main_view_model.dart';
import 'package:provider/provider.dart';

import '../data/model/photo.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // read는 단발성 특정 이벤트 처리, watch는 지속적인 UI 그릴 때 사용
    final viewModel = context.watch<MainViewModel>();
    // 필요한 images data를 빼내서 사용하면 파라미터 넘기지 않아도 됨
    // final image = viewModel.images;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white60,
        title: const Text(
          '이미지 검색 앱',
          style: TextStyle(fontSize: 20, color: Colors.black, letterSpacing: 1),
        ),
        centerTitle: true,
      ),
      // Column 아래 Padding 위에 Expanded로 감싸면 renderFlex issue 제거됨
      // LandScape overflow: padding 상하 조절로 issue 제거됨
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 5, 5, 5),
            child: _genTextField(viewModel),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              // _genGridView() viewModel의 images 인자를 집어 넣음
              child: viewModel.isLoading ?
              const Center(child: CircularProgressIndicator())
                  : _genGridView(viewModel.images),
            ),
          ),
        ],
      ),
    );
  }

  Widget _genTextField(MainViewModel viewModel) {
    return SingleChildScrollView(
      child: TextField(
        controller: _controller,
        decoration: InputDecoration(
          enabledBorder: _genOutLineInputer(),
          // TextField height 설정과 borderLine 유지하기
          contentPadding: const EdgeInsets.fromLTRB(12.0, 0.1, 0.0, 0.1),
          focusedBorder: _genOutLineInputer(),
          suffixIcon: GestureDetector(
            onTap: () {
              // 키보드 닫기 이벤트 처리
              FocusManager.instance.primaryFocus?.unfocus();
              setState(() {
                viewModel.fetchImage(_controller.text);
                _controller.clear();
              });
            },
            child: const Icon(Icons.search),
          ),
          hintText: '검색어를 입력하세요',
        ),
      ),
    );
  }

  OutlineInputBorder _genOutLineInputer() {
    return OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(
        color: Theme.of(context).colorScheme.secondary,
        width: 1,
      ),
    );
  }
  Widget _genGridView(List<Photo> images) {
    return Center(
      child: Builder(builder: (BuildContext context) {
        final orientation = MediaQuery.of(context).orientation;
        return GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: orientation == Orientation.portrait ? 2 : 4,
            crossAxisSpacing: 10,
          ),
          children: images
              .map((Photo image) {
            return SingleChildScrollView(
              child: _genPhotoData(image),
            );
          }).toList(),
        );
      }),
    );
  }

  Widget _genPhotoData(Photo image) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.network(
            image.previewURL,
            width: MediaQuery.of(context).size.width,
            height: 120,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 5),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Text(
              'ID : ${image.id.toString()}',
              style: const TextStyle(fontSize: 16, color: Colors.black),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Text(
            'Tags : ${image.tags}',
            style: const TextStyle(fontSize: 14, color: Colors.black),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}