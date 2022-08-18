import 'package:flutter/material.dart';
import 'package:mvvm_image_search_app/ui/main_view_model.dart';
import 'package:provider/provider.dart';

import 'ui/main_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => MainViewModel(),
        ),

        // ChangeNotifierProvider(
        //   create: (_) => ImageSearchViewModel(),
        // ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainScreen(),
    );
  }
}
