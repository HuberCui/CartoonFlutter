import 'package:flutter/material.dart';
import 'home_vip_item.dart';

class Home_VIP_Section extends StatefulWidget {
  @override
  _Home_VIP_SectionState createState() => _Home_VIP_SectionState();
}

class _Home_VIP_SectionState extends State<Home_VIP_Section> {
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
                          Icon(Icons.print),
                          Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: Text("强力推荐作品"),
                          ),
                        ],
                      )),
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Icon(Icons.arrow_forward),
                  )
                ],
              )),
          GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 5,
                  childAspectRatio: 0.5),
              itemCount: 3,
              shrinkWrap: true,
              //使当前gridview自适应自己高度，解决GridView inside a Listview causing “Vertical viewport was given unbounded height” even when Expanded
              physics: NeverScrollableScrollPhysics(),
              //使这个GridView不随着外边的listview滚动滚动
              itemBuilder: (context, index) {
                return Home_VIP_Item();
              }),
          Container(
            height: 20,
          )
        ],
      ),
    );
  }
}
