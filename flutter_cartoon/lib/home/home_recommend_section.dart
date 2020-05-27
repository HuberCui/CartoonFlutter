import 'package:flutter/material.dart';
import 'package:fluttercartoon/home/home_recommend_item.dart';
import 'package:fluttercartoon/models/comics.dart';
//class HomeSections extends StatefulWidget {
//
//  @override
//  _HomeSectionsState createState() => _HomeSectionsState();
//}

class HomeSections extends StatelessWidget {
  Comics comics;

  HomeSections(this.comics);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
              color: Colors.white,
              height: 50,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Row(
                        children: <Widget>[
                          Image.network(comics.titleIconUrl,width: 20,height: 20,),
                          Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: Text(comics.itemTitle),
                          ),
                        ],
                      )),
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Icon(Icons.more_horiz),
                  )
                ],
              )),


        comics.comics.length > 0 ?  GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 5,
                childAspectRatio: 1.3),
            itemCount: comics.comics.length == null ? 0: comics.comics.length,
            shrinkWrap: true,
            //使当前gridview自适应自己高度，解决GridView inside a Listview causing “Vertical viewport was given unbounded height” even when Expanded
            physics: NeverScrollableScrollPhysics(),
            //使这个GridView不随着外边的listview滚动滚动
            itemBuilder: (context, index) {
              if(comics.itemTitle == "最新动画"){
                return Container(child: Text('格式不对'),);
              }

              return HomeItem(comics.comics[index]);
            },
          ) : Container(),
          Container(
            height: 15,
          )
        ],
      ),
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
