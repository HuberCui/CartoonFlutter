import 'package:flutter/material.dart';

class HomeSections extends StatefulWidget {
  @override
  _HomeSectionsState createState() => _HomeSectionsState();
}

class _HomeSectionsState extends State<HomeSections> {
  @override
  Widget build(BuildContext context) {




return 
  Container(
    child: Column(
        mainAxisSize: MainAxisSize.min,
      children: <Widget>[
    Container(child: Text("aaa"),),

    Flexible(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 5,childAspectRatio: 0.8),
        itemCount: 4,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context,index){
          return Container(child: Text("$index"),width: 90,height: 90,);
        },
      ),
    )
],),
  );
//    return CustomScrollView(
//      slivers: <Widget>[
////        SliverAppBar(),
//        SliverGrid(delegate: SliverChildBuilderDelegate((context,index){
//          return Container(child: Text("$index"),);
//        },childCount: 4),),
//      ],
//    );
  }
}
