import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'home_vip_section.dart';

class Home_VIP_List extends StatefulWidget {
  @override
  _Home_VIP_ListState createState() => _Home_VIP_ListState();
}

class _Home_VIP_ListState extends State<Home_VIP_List> with AutomaticKeepAliveClientMixin<Home_VIP_List>{
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return EasyRefresh.builder(onRefresh: () async {
      print('下拉刷新');
    }, onLoad: () async {
      print('上拉加载');
    }, builder: (BuildContext context, ScrollPhysics physics, Widget header,
        Widget footer) {
      return ListView.builder(
        itemBuilder: (context, index) {
          return Home_VIP_Section();
        },
        itemCount: 6,
      );
    });
  }
}
