import 'dart:html';
import 'package:flutter/material.dart';
import 'package:fluttercartoon/page_request/home_page_request.dart';


class BookIntro extends StatefulWidget {
  String comic_id;
  @override
  _BookIntroState createState() => _BookIntroState();
}

class _BookIntroState extends State<BookIntro> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    HomeRequest.request_CommicDetail(widget.comic_id).then((res){
      setState(() {

      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(child: Text(''),);

  }
}
