import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttercartoon/main.dart';
import 'package:fluttercartoon/widget/SliverCustomHeader.dart';
import 'Test.dart';
class MinePage extends StatefulWidget {
  @override
  _MinePageState createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> {


  @override
  Widget build(BuildContext context) {
    //超出边界处理
    ErrorWidget.builder = (FlutterErrorDetails errorDetails){
      return Center(
        child: Text(
          "Error appeared.",
          style: Theme.of(context).textTheme.title.copyWith(color: Colors.red),
        ),
      );
    };
    return Scaffold(
      body: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List list0 = [
    {'title': '我的VIP', 'image': 'assets/images/mine/mine_vip@2x.png'},
    {'title': '充值妖气币', 'image': 'assets/images/mine/mine_coin@2x.png'}
  ];
  List list1 = [
    {'title': '消费记录', 'image': 'assets/images/mine/mine_accout@2x.png'},
    {'title': '我的订阅', 'image': 'assets/images/mine/mine_subscript@2x.png'},
    {'title': '我的封印图', 'image': 'assets/images/mine/mine_seal@2x.png'}
  ];
  List list2 = [
    {'title': '我的消息/消费券', 'image': 'assets/images/mine/mine_message@2x.png'},
    {'title': '妖果商城', 'image': 'assets/images/mine/mine_cashew@2x.png'},
    {'title': '在线阅读免流量', 'image': 'assets/images/mine/mine_freed@2x.png'}
  ];
  List list3 = [
    {'title': '帮助中心', 'image': 'assets/images/mine/mine_feedBack@2x.png'},
    {'title': '我要反馈', 'image': 'assets/images/mine/mine_mail@2x.png'},
    {'title': '给我们评分', 'image': 'assets/images/mine/mine_judge@2x.png'},
    {'title': '成为作者', 'image': 'assets/images/mine/mine_author@2x.png'},
    {'title': '设置', 'image': 'assets/images/mine/mine_setting@2x.png'}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          // SliverToBoxAdapter(
          //   child: Container(color: Colors.red,height: 80,),
          // ),
//           SliverAppBar(
// //             actions: <Widget>[
// // //              _buildAction(),
// //             ],
//             // title: Text('DDDD'),
//             //  backgroundColor: Theme.of(context).accentColor,
//             expandedHeight: 50.0,
//             flexibleSpace: FlexibleSpaceBar(
//               background: Image.asset(
//                   'assets/images/mine/mine_bg_for_girl@2x.png',
//                   fit: BoxFit.cover),
//             ),
// //            floating: true,
// //             snap: false,
//              pinned: true,
//           ),
         SliverPersistentHeader(
            pinned: false,//标题栏是否固定
           delegate: SliverCustomHeaderDelegate(
             title: '',
             collapsedHeight: 40,
             expandedHeight: 300,
             paddingTop: MediaQuery.of(context).padding.top,
               fileImageUrl: 'assets/images/mine/mine_bg_for_girl@2x.png'
           ),

         ),
          SliverList(
            // itemExtent: 50.0,
            delegate: SliverChildBuilderDelegate((context, index) {
              return GestureDetector(
                child: MineRow(list0[index]["image"], list0[index]["title"],
                    index == list0.length - 1 ? false : true),
                onTap: () {
                  print(list0[index]["title"]);
                },
              );
            }, childCount: list0.length),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
            ),
          ),
          SliverList(
              // itemExtent: 50.0,
              delegate: SliverChildBuilderDelegate((context, index) {
            return GestureDetector(
              child: MineRow(list1[index]["image"], list1[index]["title"],
                  index == list1.length - 1 ? false : true),
              onTap: () {
                print(list1[index]["title"]);

                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                 return SwipeToDissmissDemo();
                }));
              },
            );
          }, childCount: list1.length)),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
            ),
          ),
          SliverList(
              // itemExtent: 50.0,
              delegate: SliverChildBuilderDelegate((context, index) {
            return GestureDetector(
              child: MineRow(list2[index]["image"], list2[index]["title"],
                  index == list2.length - 1 ? false : true),
              onTap: () {
                print(list2[index]["title"]);
              },
            );
          }, childCount: list2.length)),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
//                child: Container(height: 12,)
            ),
          ),
          SliverList(
              // itemExtent: 50.0,
              delegate: SliverChildBuilderDelegate((context, index) {
            return GestureDetector(
              child: MineRow(list3[index]["image"], list3[index]["title"],
                  index == list3.length - 1 ? false : true),
              onTap: () {
                print(list3[index]["title"]);
              },
            );
          }, childCount: list3.length)),
        ],
      ),
    );
  }
}


class MineRow extends StatelessWidget {
  String imagefile;
  String titleString;
  bool showLine = true;

  MineRow(this.imagefile, this.titleString, this.showLine);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Row(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                child: Image.asset(
                  imagefile,
                  width: 32,
                  height: 32,
                ),
                padding: EdgeInsets.only(right: 20),
              ),
              Expanded(child: Text(titleString)),
              Icon(Icons.chevron_right)
            ],
          ),
          showLine ? Divider(height: 10, indent: 42) : Container()
        ],
      ),
    );
  }
}
