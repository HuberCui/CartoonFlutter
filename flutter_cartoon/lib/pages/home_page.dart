import 'package:flutter/material.dart';
import 'package:fluttercartoon/PHheader.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        body: Center(child: Container(child: Text('首页'),)),
        floatingActionButton: FloatingActionButton(child: Icon(Icons.add),onPressed: () async {
          await HomeRequest.request_BoutiqueList();
        },),
      );
  }
}
