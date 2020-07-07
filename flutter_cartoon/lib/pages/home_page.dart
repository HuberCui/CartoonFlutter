import 'package:flutter/material.dart';
import 'package:fluttercartoon/PHheader.dart';
import 'package:fluttercartoon/home/home_recommend_list.dart';
import 'package:fluttercartoon/home/home_vip_list.dart';
import 'package:fluttercartoon/home/home_rank_list.dart';
import 'search_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _tabController = TabController(length: 4, vsync: this);


  }

  void dispose() {
    //生命周期函数：
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: TabBar(
          labelColor: Colors.white,
          labelStyle: TextStyle(fontSize: 16),
          unselectedLabelColor: Colors.white30,
          unselectedLabelStyle: TextStyle(fontSize: 14),
          indicator: BoxDecoration(),
          tabs: <Widget>[
            Tab(text: "推荐"),
            Tab(text: "VIP"),
            Tab(text: "订阅"),
            // Tab(child: Text("排行",style: TextStyle(fontSize: 16),),),
            Tab(text: "排行")
          ],
          controller: _tabController,
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: (){
                showSearch(context: context, delegate: SearchPage());
//                Navigator.of(context).push(MaterialPageRoute(builder: (_){
//
//                  return ;
//                }));
              })
        ],
      ),

      body: TabBarView(
        children: [
          Home_Recommend_List(),
          Home_VIP_List(VIP_SubScripe.VIP_LIST),
          Home_VIP_List(VIP_SubScripe.SubScripe_LIST),
          Home_Rank_List(),
        ],
        controller: _tabController,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () async {
         // await HomeRequest.request_BoutiqueList();
        },
      ),
    );
  }
}
