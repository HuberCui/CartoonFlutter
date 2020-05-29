
import 'package:flutter/material.dart';
import 'package:fluttercartoon/page_request/home_page_request.dart';


class BookIntro_Page extends StatefulWidget {
  int comic_id;

  BookIntro_Page(this.comic_id);
  @override
  _BookIntro_PageState createState() => _BookIntro_PageState();
}

class _BookIntro_PageState extends State<BookIntro_Page> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    HomeRequest.request_CommicDetail(widget.comic_id).then((res){
      setState(() {
         print(res.data);
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('xxx'),),
        body: Text('xxxxxxxxxx'),

    );

  }
}
