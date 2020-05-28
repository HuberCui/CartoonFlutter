import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:fluttercartoon/page_request/home_page_request.dart';
import 'home_vip_section.dart';
import 'package:fluttercartoon/home_models/vip_comics.dart';
enum VIP_SubScripe{
  VIP_LIST,
  SubScripe_LIST
}
class Home_VIP_List extends StatefulWidget {

  VIP_SubScripe vip_subScripe;
  Home_VIP_List(this.vip_subScripe);

  @override
  _Home_VIP_ListState createState() => _Home_VIP_ListState();
}

class _Home_VIP_ListState extends State<Home_VIP_List> with AutomaticKeepAliveClientMixin<Home_VIP_List>{
  List <VIP_Comic> newVipList = [];
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    if(widget.vip_subScripe == VIP_SubScripe.VIP_LIST){
      HomeRequest.request_VipList().then((res){
        setState(() {
          for(var item in res.data["newVipList"]){
            newVipList.add(VIP_Comic.fromJson(item));

          }
        });

      }

      );
    }

    if(widget.vip_subScripe == VIP_SubScripe.SubScripe_LIST){
      HomeRequest.request_NewSubscribeList().then(
          (res){
            setState(() {
              for(var item in res.data["newSubscribeList"]){
                newVipList.add(VIP_Comic.fromJson(item));

              }
            });
          }
      );
    }

  }
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
          return Home_VIP_Section(newVipList[index]);
        },
        itemCount: newVipList.length,
      );
    });
  }
}
