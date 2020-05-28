import 'package:flutter/material.dart';
import 'package:fluttercartoon/home_models/commic_detail.dart';
class HomeRank extends StatelessWidget {
  CommicDetail commicDetail;
  HomeRank(this.commicDetail);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 150,
        child: Row(children: [
          Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 10, top: 10),
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(),
                  child: Image.network(
                    commicDetail.cover_image,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              flex: 1),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(commicDetail.title),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    commicDetail.subTitle,
                    style: TextStyle(fontSize: 13, color: Colors.black54),
                  ),
                ),
              ],
            ),
            flex: 1,
          )
        ]));
  }
}
