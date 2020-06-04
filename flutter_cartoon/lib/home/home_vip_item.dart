import 'package:flutter/material.dart';
import 'package:fluttercartoon/home_models/commic_detail.dart';
//class Home_VIP_Item extends StatefulWidget {
//  @override
//  _Home_VIP_ItemState createState() => _Home_VIP_ItemState();
//}

class Home_VIP_Item extends StatelessWidget {
  
  CommicDetail commicDetail;
  VoidCallback onpress;
  Home_VIP_Item(this.commicDetail,this.onpress);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
          child: Container(
        child: Column(
          children: <Widget>[
            Expanded(child:  Image.network(commicDetail.cover_image,fit: BoxFit.cover,),flex: 4),

            Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(padding: EdgeInsets.only(left: 10),child: Text(commicDetail.name),),

              ],
            ),flex: 1,)
          ],
        ),
      ),
    );
  }
}
