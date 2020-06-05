import 'package:flutter/material.dart';
import 'package:fluttercartoon/page_request/group_page_request.dart';
import 'package:fluttercartoon/cate_models/CateListModel.dart';
import 'package:fluttercartoon/pages/sort_page.dart';

class GroupPage extends StatefulWidget {
  @override
  _GroupPageState createState() => _GroupPageState();
}

class _GroupPageState extends State<GroupPage> {
  List<CateListModel> list = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    GroupRequest.request_CateList().then((res) {
      setState(() {
        for (var item in res.data['rankingList']) {
          list.add(CateListModel.fromJson(item));
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('')),
        body: Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0, top: 15, bottom: 5, right: 8),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 1.0),
            itemBuilder: (context, index) {
              CateListModel model = list[index];
              return GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                  return SortPage(model);
                })).then((value) => print(value));
                },
                              child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                    Expanded(child: Container(child: Image.network(model.cover,fit: BoxFit.fitWidth,)),flex: 5,),
                    Expanded(child: Center(child: Text('${model.sortName}')),flex: 2,)

                  ],),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                        color: Colors.black12,
                        width: 0.5,
                        style: BorderStyle.solid),
                  ),
                ),
              );
            }),
      ),
    ));
  }
}
