import 'package:flutter/material.dart';

class TabNav1 extends StatefulWidget {
  @override
  _TabNav1State createState() => _TabNav1State();
}

class _TabNav1State extends State<TabNav1>with SingleTickerProviderStateMixin {
  // ignore: non_constant_identifier_names
  TabController controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller =TabController(length: 3, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar:TabBar(controller: controller, tabs: <Widget>[Tab(icon: Icon(Icons.home),)
        ],
      )

    );
  }
}
