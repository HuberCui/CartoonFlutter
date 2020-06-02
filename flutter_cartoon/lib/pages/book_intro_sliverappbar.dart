import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:fluttercartoon/PHheader.dart';
import 'package:fluttercartoon/book_detail_models/book_detail.dart';

class book_intro_sliverappbar {
  Widget appbar(BuildContext context, TabController tabController,
      BookDetail bookDetail) {
    return SliverAppBar(
      // backgroundColor: Colors.transparent,
      pinned: true,
//              floating: true,
      expandedHeight: 280,
      
      flexibleSpace: FlexibleSpaceBar(
                collapseMode: CollapseMode.pin,
//                stretchModes:const <StretchMode>[StretchMode.blurBackground],
        background: Container(
          height: double.infinity,
          child: Column(
            children: <Widget>[
              Expanded(
                child: Stack(
                  children: <Widget>[
                    ConstrainedBox(
                        constraints: BoxConstraints.expand(),
                        child: Image.asset(
                          'assets/images/mine/mine_bg_for_girl@2x.png',
                          fit: BoxFit.cover,
                        )),
                    Positioned.fill(
                      child: BackdropFilter(
                        filter: new ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                        child: Container(
                          decoration: BoxDecoration(
                            color: (Colors.black).withOpacity(0.6),
                            borderRadius: BorderRadius.circular(0),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                        left: 0,
                        top: Device.device_top(context) + 44,
                        right: 0,
                        bottom: 0,
                        child: Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(bookDetail.cover)),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 15, bottom: 15),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      bookDetail.name,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16),
                                    ),
                                    Container(height: 10),
                                    Text(
                                      bookDetail.author['name'],
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 14),
                                    ),
                                    Container(height: 20),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: <Widget>[
                                        Padding(
                                          padding: EdgeInsets.only(right: 5),
                                          child: Text(
                                            '点击',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(right: 5),
                                          child: Text(
                                            '4111万',
                                            style: TextStyle(
                                                color: Colors.orange,
                                                fontSize: 14),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(right: 5),
                                          child: Text(
                                            '收藏',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(right: 5),
                                          child: Text('10086',
                                              style: TextStyle(
                                                  color: Colors.orange,
                                                  fontSize: 14)),
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    bookDetail == null ?Container():
                                        Row(
                                          children: pandlist(bookDetail),
                                        )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ))
                  ],
                ),
              ),
              Container(
                height: 44,
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
      bottom: TabBar(
        controller: tabController,
        tabs: [
          Tab(text: "详情"),
          Tab(text: "目录"),
          Tab(text: "评论"),
        ],
        unselectedLabelColor: Colors.black,
        labelColor: Colors.greenAccent,
        indicatorColor: Colors.greenAccent,
        indicatorSize: TabBarIndicatorSize.label,
      ),
    );
  }

  List<Widget> pandlist(BookDetail bookdetail) {
    List<Widget> list = List();
    for (int i = 0; i < bookdetail.theme_ids.length; i++) {
      Padding padding = Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: _colorRimText(' ${bookdetail.theme_ids[i].toString()} ', Colors.white, Colors.white, 1, 2, 15),
      );

      list.add(padding);
    }
    return list;
  }

  //带颜色边框的文字-如积分提示
  Widget _colorRimText(String text, Color textColor, Color rimColor,
      double rimWidth, double borderRadius, double fontsize) {
    return Container(
      child: Text(
        text,
        style: TextStyle(color: textColor, fontSize: fontsize),
        textAlign: TextAlign.left,
      ),
      decoration: BoxDecoration(
          border: Border.all(color: rimColor, width: rimWidth),
          borderRadius: BorderRadius.circular(borderRadius)),
    );
  }
}
