//import 'dart:html';
import 'package:flutter/material.dart';
import 'dart:math';
/**
 * 使用Dismissible组件实现右滑删除
 * 它是根据Key来删除ListView中的某一项的
 * 请注意ListView.builder中itemBuilder: (context, index)传进的index
 * 他不是list中的下标，而是这个组件在当前屏幕上所占的位置
 */
import 'package:flutter/material.dart';
import 'package:fluttercartoon/tools/IconTextButton.dart';

class SwipeToDissmissDemo extends StatefulWidget {
  @override
  _SwipeToDissmissDemoState createState() => _SwipeToDissmissDemoState();
}

class _SwipeToDissmissDemoState extends State<SwipeToDissmissDemo> {
  List<String> list = List.generate(20, (index) => "This is number $index");

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('SwipeToDissmissDemo'),
      ),
      body: ReorderableListView(
        children: <Widget>[
          for (String item in list)
            Container(
              child: Text('$item'),
              key: ValueKey(item),
              height: 100,
              width: 200,
              margin: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
              decoration: BoxDecoration(
                  color:
                  Colors.greenAccent,
                  borderRadius: BorderRadius.circular(10)),
            )

        ],
        onReorder: (int oldIndex, int newIndex) {
          if (oldIndex < newIndex) {
            newIndex -= 1;
          }
          var child = list.removeAt(oldIndex);
          list.insert(newIndex, child);
          setState(() {});
        },
      ),
    );
  }
}

Color slRandomColor({int r = 255, int g = 255, int b = 255, a = 255}) {
if (r == 0 || g == 0 || b == 0) return Colors.black;
if (a == 0) return Colors.white;
return Color.fromARGB(
a,
r != 255 ? r : Random.secure().nextInt(r),
g != 255 ? g : Random.secure().nextInt(g),
b != 255 ? b : Random.secure().nextInt(b),
);
}

class Item extends StatefulWidget {
 List list;
  int index;
  Key key;
  Item(this.index,this.list,{this.key}):super(key:key);
  @override
  _ItemState createState() => _ItemState();
}

class _ItemState extends State<Item> {

  @override
  Widget build(BuildContext context) {
    print('${widget.list[widget.index]}');
    return GestureDetector(
        onTap: (){

          setState(() {
            print('--------------${widget.index}');
            widget.list.removeAt(widget.index);
          });

        },
        child: ListTile(title: Text('${widget.list[widget.index]}'),));
  }
}



class AAAAAAA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}



//Dismissible(
//key: Key(list[index]),
//direction: DismissDirection.endToStart,
//child: ListTile(title: Text('${list[index]}')),
//background: Container(
//color: Colors.redAccent,
//),
//
//onDismissed: (direction) {
//setState(() {
//Scaffold.of(context).showSnackBar(
//SnackBar(content: Text("${list[index]}")));
//list.removeAt(index);
//});
//},
//),