import 'package:flutter/material.dart';
import 'package:fluttercartoon/book_detail_models/book_intro_model.dart';
import 'package:fluttercartoon/page_request/home_page_request.dart';
import 'package:fluttercartoon/book_detail_widget/book_catalogue_list.dart';
import 'package:fluttercartoon/book_detail_widget/book_comment_list.dart';
import 'package:fluttercartoon/book_detail_widget/book_detail_list.dart';
import 'dart:ui';
import 'package:fluttercartoon/PHheader.dart';
import 'book_intro_sliverappbar.dart';
//
//  Widget _buildTabBarBg() {
//    return Container(
//      //TabBar圆角背景颜色
//      height: 50,
//      child: ClipRRect(
//          borderRadius: BorderRadius.only(
//              topLeft: Radius.circular(15), topRight: Radius.circular(15)),
//          child: Container(color: Colors.red)),
//    );
//  }

class BookIntroPage extends StatefulWidget {
  int comic_id;

  BookIntroPage(this.comic_id);

  @override
  _BookIntroPageState createState() => _BookIntroPageState();
}

class _BookIntroPageState extends State<BookIntroPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  BookDetailIntro _bookIntro;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
    HomeRequest.request_CommicDetail(widget.comic_id).then((res) {
      setState(() {
        print(res.data);
        _bookIntro = BookDetailIntro.fromJson(res.data);
        
         print("${_bookIntro.comic.cover}");
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(242, 242, 242, 1),
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
                 BookIntroSliverappbar().appbar(context, _tabController,_bookIntro == null ? null :_bookIntro.comic),
            
                SliverToBoxAdapter(
                  child:  Divider(height: 0.5,color:Colors.black26,),
                )
            ];
          },
          body: TabBarView(controller: _tabController, children: [
            // Container(height:300,color:Colors.red,child: MediaQuery.removePadding(context: context,removeTop: true, child: _buildListView('aaa')),),
            BookDetailList(_bookIntro),
            BookCatalogueList(),
            BookCommentList()
            
          ])),
    );
  }

  Widget _buildListView(String s) {
  
    return ListView.separated(
        
        itemCount: 2,
        separatorBuilder: (BuildContext context, int index) => Divider(
              color: Colors.grey,
              height: 1,
            ),
        itemBuilder: (BuildContext context, int index) {
          return Container(
              color: Colors.white,
              child: ListTile(title: Text("$s第$index 个条目")));
        });
  }


}
