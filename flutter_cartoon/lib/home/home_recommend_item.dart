import 'package:flutter/material.dart';
import 'package:fluttercartoon/home_models//commic_detail.dart';
class HomeItem extends StatelessWidget {
  CommicDetail commicDetail;
  HomeItem(this.commicDetail);
  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.white,
      child: Column(
//        mainAxisAlignment: MainAxisAlignment.end,
//        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
              child: ConstrainedBox(
                constraints: BoxConstraints.expand(),
                child: Image.network(
                  commicDetail.cover_image,
                  fit: BoxFit.cover,
                ),
              ),
              flex: 3),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(commicDetail.name),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    commicDetail.subTitle,
                    style: TextStyle(color: Colors.black26, fontSize: 13),
                  ),
                )
              ],
            ),
            flex: 1,
          )
        ],
      ),
    );
  }
}
