import 'package:flutter/material.dart';
import 'package:fluttercartoon/PHheader.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();


    _tabController = TabController(length: 4,vsync: this);
  }
  void dispose(){ //生命周期函数：
    super.dispose();
    _tabController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.green,
          title:TabBar(
          labelColor: Colors.white,
          labelStyle: TextStyle(fontSize: 16),
          unselectedLabelColor: Colors.white30,
          unselectedLabelStyle: TextStyle(fontSize: 14),
          indicator: BoxDecoration(),
          tabs: <Widget>[
            Tab(text:"推荐"),
            Tab(text:"VIP"),
            Tab(text:"订阅"),
           // Tab(child: Text("排行",style: TextStyle(fontSize: 16),),),
             Tab(text: "排行")
          ],
          controller: _tabController,
        ),actions: <Widget>[
          IconButton(icon: Icon(Icons.search,color: Colors.white,), onPressed: null)
        ],),
        body: TabBarView(children: [
          MainList(),
          MainList(),
          MainList(),
          MainList(),

        ],controller: _tabController,),
        floatingActionButton: FloatingActionButton(child: Icon(Icons.add),onPressed: () async {
          await HomeRequest.request_BoutiqueList();
        },),
      );
  }
}

class MainList extends StatefulWidget {
  @override
  _MainListState createState() => _MainListState();
}

class _MainListState extends State<MainList> {
  List list0 = [{'title':'我的VIP','image':'assets/images/mine/mine_vip@2x.png'},{'title':'充值妖气币','image':'assets/images/mine/mine_coin@2x.png'}];
  List list1 = [{'title':'消费记录','image':'assets/images/mine/mine_accout@2x.png'},{'title':'我的订阅','image':'assets/images/mine/mine_subscript@2x.png'},{'title':'我的封印图','image':'assets/images/mine/mine_seal@2x.png'}];
  List list2 = [{'title':'我的消息/消费券','image':'assets/images/mine/mine_message@2x.png'},{'title':'妖果商城','image':'assets/images/mine/mine_cashew@2x.png'},{'title':'在线阅读免流量','image':'assets/images/mine/mine_freed@2x.png'}];
  List list3 = [{'title':'帮助中心','image':'assets/images/mine/mine_feedBack@2x.png'},{'title':'我要反馈','image':'assets/images/mine/mine_mail@2x.png'},{'title':'给我们评分','image':'assets/images/mine/mine_judge@2x.png'},{'title':'成为作者','image':'assets/images/mine/mine_author@2x.png'},{'title':'设置','image':'assets/images/mine/mine_setting@2x.png'}];

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
          SliverList(
            // itemExtent: 50.0,
            delegate: SliverChildBuilderDelegate((context,index){

              return GestureDetector(child: MineRow(list0[index]["image"],list0[index]["title"],index == list0.length-1 ?false :true),onTap: (){
                print(list0[index]["title"]);
              },);
            }, childCount:list0.length),),
          SliverToBoxAdapter(

            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 5),

            ),
          ),
          SliverList(
            // itemExtent: 50.0,
              delegate: SliverChildBuilderDelegate((context,index){
                return GestureDetector(child: MineRow(list1[index]["image"],list1[index]["title"],index == list1.length-1 ?false :true),onTap: (){
                  print(list1[index]["title"]);
                },);
              }, childCount:list1.length)
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
            ),
          ),
          SliverList(
            // itemExtent: 50.0,
              delegate: SliverChildBuilderDelegate((context,index){
                return GestureDetector(child: MineRow(list2[index]["image"],list2[index]["title"],index == list2.length-1 ?false :true),onTap: (){
                  print(list2[index]["title"]);
                },);
              }, childCount:list2.length)),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
//                child: Container(height: 12,)
            ),
          ),
          SliverList(
            // itemExtent: 50.0,
              delegate: SliverChildBuilderDelegate((context,index){
                return GestureDetector(child: MineRow(list3[index]["image"],list3[index]["title"],index == list3.length-1 ?false :true),onTap: (){
                  print(list3[index]["title"]);
                },);
              }, childCount:list3.length)),

        ],

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
          showLine ? Divider(height: 10,indent:42) :Container()
        ],
      ),

    );

  }
}



