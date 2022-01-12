
import 'package:flutter/material.dart';

import 'home_page/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter ValueNotifier',
      theme: ThemeData(
     
        primarySwatch: Colors.deepPurple,
      ),
      home: const HomePage(title: 'Home Page'),
    );
  }
}