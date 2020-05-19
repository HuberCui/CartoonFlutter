import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttercartoon/widget/SliverCustomHeader.dart';
class MinePage extends StatefulWidget {
  @override
  _MinePageState createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> {
  @override
  Widget build(BuildContext context) {
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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverPersistentHeader(
             pinned: false,//标题栏是否固定
            delegate: SliverCustomHeaderDelegate(
              title: '',
              collapsedHeight: 40,
              expandedHeight: 300,
              paddingTop: MediaQuery.of(context).padding.top,
                fileImageUrl: 'assets/images/mine/mine_bg_for_girl@2x.png'
            ),
//             floating: true,
//            snap: false,
//            expandedHeight: 230,
//              flexibleSpace:Container(child: Image.asset('assets/images/mine/mine_bg_for_girl@2x.png',fit: BoxFit.fill,height: 230,),height: 230,)
          ),
          SliverList(
            // itemExtent: 50.0,
              delegate: SliverChildBuilderDelegate((context,index){
                return MineRow("assets/images/mine/mine_vip@2x.png","我的VIP",true);
              }, childCount:20)),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Container(height: 12,)
          ),
        ),
          SliverList(
             // itemExtent: 50.0,
              delegate: SliverChildBuilderDelegate((context,index){
            return Container(color: Colors.red,height: 30,);
          }, childCount:20)
          ),
          SliverToBoxAdapter(
            child: Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Container(height: 12,)
            ),
          ),
          SliverList(
            // itemExtent: 50.0,
              delegate: SliverChildBuilderDelegate((context,index){
                return Container(color: Colors.red,height: 30,);
              }, childCount:20)
          ),
          SliverToBoxAdapter(
            child: Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Container(height: 12,)
            ),
          ),
          SliverList(
            // itemExtent: 50.0,
              delegate: SliverChildBuilderDelegate((context,index){
                return Container(color: Colors.red,height: 30,);
              }, childCount:20)
          ),

        ],
      ),
    );
  }

}

class MineRow extends StatelessWidget {
  String imagefile;
  String titleString;
  bool showLine = true;
  MineRow(this.imagefile,this.titleString,this.showLine);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Row(
           // crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              Padding(child: Image.asset(imagefile,width: 32,height: 32,),padding: EdgeInsets.only(right: 20),),
              Expanded(
                  child: Text(titleString)
              ),Icon(Icons.chevron_right)
              ],),
          Divider(height: 10,indent:42)
            ],
          ),

      );

  }
}


