import 'package:flutter/material.dart';
import 'package:fluttercartoon/book_detail_models/book_detail_list_sublist_comic_model.dart';
import 'package:fluttercartoon/book_detail_models/book_intro_model.dart';
import 'package:fluttercartoon/book_detail_widget/book_detail_list_sublist.dart';

class BookDetailList extends StatelessWidget {
  BookDetailIntro bookDetailIntro;

  BookDetailList(this.bookDetailIntro);
  @override
  Widget build(BuildContext context) {
    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: ListView(
        physics: ClampingScrollPhysics(), //去掉弹性
        children: <Widget>[
          Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 15, right: 15, top: 15),
                  child: Text('作品简介',
                      style: TextStyle(color: Colors.black, fontSize: 16)),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 20),
                  child: bookDetailIntro == null ? Text(''):Text('${bookDetailIntro.comic.description}',
                      style: TextStyle(color: Colors.black54, fontSize: 14)),
                )
              ],
            ),
          ),
          Container(
            height: 10,
          ),
          Container(
            height: 50,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text('其他作品',
                      style: TextStyle(color: Colors.black, fontSize: 16)),
                ),
                Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: GestureDetector(
                      onTap: () {
                        print('aaaaaaaaaaaaaaa');
                      },
                      child: Row(
                        children: <Widget>[
                          bookDetailIntro == null ? Text(''):Text('${bookDetailIntro.otherWorks.length}本',
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 14)),
                          Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black54,
                              size: 14,
                            ),
                          )
                        ],
                      ),
                    )),
              ],
            ),
          ),
          Container(
            height: 10,
          ),
          Container(
              color: Colors.white,
              height: 50,
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Row(
                      children: <Widget>[
                        Text('本月月票'),
                        Container(
                          width: 10,
                        ),
                        Text('1000')
                      ],
                      mainAxisAlignment: MainAxisAlignment.end,
                    ),
                  )),
                  Padding(
                      padding: const EdgeInsets.only(top: 15, bottom: 15),
                      child: Container(
                        color: Colors.black54,
                        width: 1,
                      )),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      children: <Widget>[
                        Text('累计月票'),
                        Container(
                          width: 10,
                        ),
                        Text('1000')
                      ],
                      mainAxisAlignment: MainAxisAlignment.start,
                    ),
                  )),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              )),
          Container(
            height: 10,
          ),
          Container(
            child: BookDetailListSublist(),
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
