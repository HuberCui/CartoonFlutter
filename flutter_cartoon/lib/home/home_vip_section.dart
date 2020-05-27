import 'package:flutter/material.dart';
import 'home_vip_item.dart';
import 'package:fluttercartoon/home_models/vip_comics.dart';

//class Home_VIP_Section extends StatefulWidget {
//  @override
//  _Home_VIP_SectionState createState() => _Home_VIP_SectionState();
//}

class Home_VIP_Section extends StatelessWidget {
  VIP_Comic vip_comic;
  Home_VIP_Section(this.vip_comic);
  @override 
  Widget build(BuildContext context) {
    return Container(
      child: Column(
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
                          Image.network(vip_comic.titleIconUrl),
                          Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: Text(vip_comic.itemTitle),
                          ),
                        ],
                      )),
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Icon(Icons.more_horiz),
                  )
                ],
              )),
          GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 5,
                  childAspectRatio: 0.5),
              itemCount: vip_comic.comics.length,
              shrinkWrap: true,
              //使当前gridview自适应自己高度，解决GridView inside a Listview causing “Vertical viewport was given unbounded height” even when Expanded
              physics: NeverScrollableScrollPhysics(),
              //使这个GridView不随着外边的listview滚动滚动
              itemBuilder: (context, index) {
                return Home_VIP_Item(vip_comic.comics[index]);
              }),
          Container(
            height: 20,
          )
        ],
      ),
    );
  }
}
