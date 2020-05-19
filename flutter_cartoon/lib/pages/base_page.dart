import 'package:flutter/material.dart';
import 'bottom_navigationbar.dart';
class BasePage extends StatefulWidget {
  @override
  _BasePageState createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  @override
  Widget build(BuildContext context) {
      return  LRBottomNavigationBar();

  }
}
