import 'package:flutter/material.dart';

class SortPage extends StatefulWidget {
  SortPage({Key key}) : super(key: key);

  @override
  _SortPageState createState() => _SortPageState();
}

class _SortPageState extends State<SortPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
          itemBuilder: (BuildContext context, int index) {},
          separatorBuilder: (BuildContext context, int index) {},
          itemCount: 4),
    );
  }
}

class SortItem extends StatelessWidget {
  const SortItem({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Padding(padding: EdgeInsets.all(10),child: Container(child: Image.network('src')),),
          Expanded(
            
              child: Column(children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 12), child: Text('title')),
            Padding(padding: EdgeInsets.only(top: 12), child: Text('title')),
            Padding(
                padding: EdgeInsets.only(top: 18),
                child: Text(
                  'title',
                  style: TextStyle(color: Colors.black54,fontSize: 13,),
                  maxLines: 3,
                )),
            Spacer(),
            Row(children: <Widget>[Image.asset('name')])
          ]))
        ],
      ),
    );
  }
}
