import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:fluttercartoon/home/home_rank_item.dart';
import 'package:fluttercartoon/page_request/home_page_request.dart';
import 'package:fluttercartoon/home_models/commic_detail.dart';
import 'package:fluttercartoon/pages/book_intro_page.dart';

class Home_Rank_List extends StatefulWidget {
  @override
  _Home_Rank_ListState createState() => _Home_Rank_ListState();
}

class _Home_Rank_ListState extends State<Home_Rank_List> {
  List <CommicDetail> ranklist = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    HomeRequest.request_SortList().then(
        (res){
          setState(() {

            for(var item in res.data['rankinglist']){
              ranklist.add(CommicDetail.fromJson(item));

            }

          });

        }
    );
  }
  @override
  Widget build(BuildContext context) {
    return EasyRefresh.builder(onRefresh: () async {
      print('下拉刷新');
    }, onLoad: () async {
      print('上拉加载');
    }, builder: (BuildContext context, ScrollPhysics physics, Widget header,
        Widget footer) {
      return ListView.separated(
        itemBuilder: (context, index) {
          return HomeRank(ranklist[index],(){
             Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                  return BookIntroPage(ranklist[index].comicId);
                })).then((value) => print(value));
          });
        },
        separatorBuilder: (context, index) {
          return Container(
            height: 20,
            color: Colors.greenAccent,
          );
        },
        itemCount: ranklist.length,
        padding: EdgeInsets.only(),
      );
    });
  }
}
