import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:fluttercartoon/home/home_recommend_section.dart';
import 'package:fluttercartoon/models/galleryItem.dart';
import 'package:fluttercartoon/models/book_intro.dart';
import 'package:fluttercartoon/page_request/home_page_request.dart';
class Home_Recommend_List extends StatefulWidget {
  @override
  _Home_Recommend_ListState createState() => _Home_Recommend_ListState();
}

class _Home_Recommend_ListState extends State<Home_Recommend_List> with AutomaticKeepAliveClientMixin<Home_Recommend_List>{

  BookIntro bookIntro;
  GalleyItem galleyItem;

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('aaaa');
    HomeRequest.request_BoutiqueList().then((res){


      setState(() {
        bookIntro = BookIntro.fromJson(res.data);
        galleyItem = bookIntro.galleryItems.first;
        print("------  ${galleyItem.cover_image}");
        print("init state");
      });
    });
  }



  @override
  Widget build(BuildContext context) {
    super.build(context);
    return EasyRefresh.custom(
      onRefresh: () async {
        print('下拉刷新');

        HomeRequest.request_BoutiqueList().then((res){


          setState(() {
            bookIntro = BookIntro.fromJson(res.data);
            galleyItem = bookIntro.galleryItems.first;
            print("------  ${galleyItem.cover_image}");
          });
        });
      },

      slivers: <Widget>[
        SliverAppBar(
          actions: <Widget>[
//              _buildAction(),
          ],
          title: Text(''),
          //  backgroundColor: Theme.of(context).accentColor,
          expandedHeight: 200.0,
          flexibleSpace: FlexibleSpaceBar(
            background:bookIntro.galleryItems == null ? Container() : new Swiper(
              itemBuilder: (BuildContext context, int index) {
                return new Image.network(
                  bookIntro.galleryItems[index].cover_image,
                  fit: BoxFit.fill,
                );
              },
              itemCount: bookIntro.galleryItems.length,
              autoplay: true,
              pagination: new SwiperPagination(),
            ),
          ),
          floating: true,
          // snap: snap,
          // pinned: pinned,
        ),
//          SliverPersistentHeader(
//             pinned: false,//标题栏是否固定
//            delegate: SliverCustomHeaderDelegate(
//              title: '',
//              collapsedHeight: 40,
//              expandedHeight: 300,
//              paddingTop: MediaQuery.of(context).padding.top,
//                fileImageUrl: 'assets/images/mine/mine_bg_for_girl@2x.png'
//            ),
//
//          ),
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
//             return Text("$index");
            return HomeSections();
          }, childCount: 4),
        )
      ],
    );
  }
}
