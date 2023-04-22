import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../my_library/my_library_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Library App',
      home: MyLibraryScreen(),
    );
  }
}
