import 'package:flutter/material.dart';

class HomeRank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: Row(
        children: [
          Expanded(child: Padding(padding: EdgeInsets.only(left: 10,top: 10),child: ConstrainedBox(constraints: BoxConstraints.expand(),child: Image.asset('assets/images/mine/mine_bg_for_boy@2x.png',fit: BoxFit.fitHeight,),),),flex: 1),
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Padding(padding: EdgeInsets.only(left: 10),child: Text("月票"),),
              Padding(padding: EdgeInsets.only(left: 10),child: Text("来不及了快上车，老司机票选人气漫画，带你飞",style: TextStyle(fontSize: 13,color: Colors.black54),),),
            ],
          ),flex: 1,)
        ]
      )
    );
  }
}

