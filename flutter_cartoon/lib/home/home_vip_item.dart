import 'package:flutter/material.dart';

class Home_VIP_Item extends StatefulWidget {
  @override
  _Home_VIP_ItemState createState() => _Home_VIP_ItemState();
}

class _Home_VIP_ItemState extends State<Home_VIP_Item> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Expanded(child:  Image.asset('assets/images/mine/mine_bg_for_boy@2x.png',fit: BoxFit.cover,),flex: 4),

          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(padding: EdgeInsets.only(left: 10),child: Text("title"),),

            ],
          ),flex: 1,)
        ],
      ),
    );
  }
}
