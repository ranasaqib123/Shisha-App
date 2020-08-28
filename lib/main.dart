
import 'package:flutter/material.dart';

import 'home2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.lightGreen.shade700),
      home: Home2(),
    );
  }
}
