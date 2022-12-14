import 'package:flutter/material.dart';
import 'package:mvvm_image_search_app/ui/main_action.dart';
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
  void initState() {
    super.initState();
    Future.microtask(() {
      final viewModel = context.read<MainViewModel>();
      viewModel.evenStream.listen((event) {
        // final snackBar = SnackBar(
        //   content: Text(event),
        event.when(
          showSnackBar: (message) {
            final snackBar = SnackBar(
              content: Text(message),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          showDialog: (message) {
            showDialog<void>(
              context: context,
              barrierDismissible: false, // user must tap button!
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text('AlertDialog Title'),
                  content: SingleChildScrollView(
                    child: ListBody(
                      children: <Widget>[
                        Text(message),
                      ],
                    ),
                  ),
                  actions: <Widget>[
                    TextButton(
                      child: const Text('Approve'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                );
              },
            );
          },
        );
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MainViewModel>();
    final orientation = MediaQuery.of(context).orientation;
    final state = viewModel.state;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          '????????? ?????? ???',
        ),
        actions: [
          IconButton(
            onPressed: () {
              viewModel.onAction(const MainAction.addAction());
            },
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(
                    color: Theme.of(context).colorScheme.secondary,
                    width: 2,
                  ),
                ),
                suffixIcon: GestureDetector(
                  onTap: () {
                    viewModel.onAction(MainAction.getImages(_controller.text));
                    // viewModel.fetchImages(_controller.text);
                  },
                  child: const Icon(Icons.search),
                ),
                hintText: '???????????? ???????????????',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('?????? : ', style: Theme.of(context).textTheme.titleSmall),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              //child: viewModel.isLoading
              child: state.isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount:
                            orientation == Orientation.portrait ? 2 : 4,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                      ),
                      //children: viewModel.photos.map((Photo image) {
                      children: state.photos.map((Photo image) {
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                            image.previewUrl,
                            fit: BoxFit.cover,
                          ),
                        );
                      }).toList(),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
