import 'package:flutter/material.dart';

class HomeItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
//        mainAxisAlignment: MainAxisAlignment.end,
//        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
              child: Image.asset(
                'assets/images/mine/mine_bg_for_boy@2x.png',
                fit: BoxFit.cover,
              ),
              flex: 3),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text("title"),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "少女 恋爱 纯爱",
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
