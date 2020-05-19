import 'package:flutter/material.dart';
import 'bottom_navigationbar.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return LRBottomNavigationBar();
  }
}
