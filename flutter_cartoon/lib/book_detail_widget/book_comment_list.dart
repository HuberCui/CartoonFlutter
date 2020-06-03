import 'package:flutter/material.dart';
import 'package:fluttercartoon/page_request/home_page_request.dart';
import 'package:fluttercartoon/book_detail_models/book_comment_model.dart';
import 'package:fluttercartoon/book_detail_models/level.dart';

class BookCommentList extends StatefulWidget {
  String comic_id;
  String thread_id;
  BookCommentList(this.comic_id, this.thread_id);

  @override
  _BookCommentListState createState() => _BookCommentListState();
}

class _BookCommentListState extends State<BookCommentList> {
  List<BookCommentModel> list = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    HomeRequest.request_CommentList(widget.comic_id, widget.thread_id)
        .then((res) {
      setState(() {
        print(res.data);
        for (var item in res.data['commentList']) {
          list.add(BookCommentModel.fromJson(item));
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: ListView.separated(
            physics: ClampingScrollPhysics(), //去掉弹性(),
            itemBuilder: (BuildContext context, int index) {
              return Container(
                color: Colors.white,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 10, left: 10, right: 10),
                      child: ClipOval(
                          child: Image.network(
                        list[index].face,
                        width: 40,
                        height: 40,
                      )),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 10, bottom: 10, right: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              list[index].nickname,
                              style: TextStyle(fontSize: 15,color: Colors.black45),
                            ),
                            Container(height: 10),
                            Container(
                                child: Text(
                              list[index].content,
                              style: TextStyle(fontSize: 13,color: Colors.black),
                              maxLines: 3,
                            ))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Container(
                  height: 0.5,
                  color: Colors.black12,
                ),
              );
            },
            itemCount: list.length));
  }
}
