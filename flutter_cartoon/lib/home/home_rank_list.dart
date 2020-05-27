import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:fluttercartoon/home/home_rank_item.dart';
class Home_Rank_List extends StatefulWidget {
  @override
  _Home_Rank_ListState createState() => _Home_Rank_ListState();
}

class _Home_Rank_ListState extends State<Home_Rank_List> {
  @override
  Widget build(BuildContext context) {
    return  EasyRefresh.builder(
        onRefresh: () async{
          print('下拉刷新');
        },
        onLoad: () async {
          print('上拉加载');
        },



        builder: (BuildContext context, ScrollPhysics physics, Widget header, Widget footer){
          return ListView.separated(

            itemBuilder: (context,index){
            return HomeRank();
          },
            separatorBuilder: (context,index){
              return Container(height: 20,color: Colors.greenAccent,);
            },
            itemCount: 6,

            padding: EdgeInsets.only(),
          );
        }


    );
  }
}
