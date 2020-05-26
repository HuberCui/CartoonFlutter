import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:fluttercartoon/home/home_recommend_section.dart';

class Home_Recommend_List extends StatefulWidget {
  @override
  _Home_Recommend_ListState createState() => _Home_Recommend_ListState();
}

class _Home_Recommend_ListState extends State<Home_Recommend_List> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('aaaa');
  }
  @override
  Widget build(BuildContext context) {
    return  EasyRefresh.custom(
      onRefresh: () async{
        print('下拉刷新');
      },
      onLoad: () async {
        print('上拉加载');
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
            background: new Swiper(
              itemBuilder: (BuildContext context,int index){
                return new Image.network("https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1589964924&di=afa88f893296a2741081c6f3c66257fa&src=http://a3.att.hudong.com/14/75/01300000164186121366756803686.jpg",fit: BoxFit.fill,);
              },
              itemCount: 3,
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
        SliverList(delegate: SliverChildBuilderDelegate((context,index){
//             return Text("$index");
          return HomeSections();
        },childCount: 4),)



      ],

    );
  }

}
