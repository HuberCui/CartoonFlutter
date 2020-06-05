import 'package:flutter/material.dart';
import 'package:fluttercartoon/cate_models/CateListModel.dart';
import 'package:fluttercartoon/cate_models/sort_list_model.dart';
import 'package:fluttercartoon/page_request/group_page_request.dart';
import 'package:fluttercartoon/pages/book_intro_page.dart';
class SortPage extends StatefulWidget {
  CateListModel cateListModel;
  SortPage(this.cateListModel,{Key key}) : super(key: key);

  @override
  _SortPageState createState() => _SortPageState();
}

class _SortPageState extends State<SortPage> {
  List <SortListModel> list = [];
  @override
  void initState() {
    
    // TODO: implement initState
    super.initState();

    GroupRequest.request_CommicList(widget.cateListModel.argCon, widget.cateListModel.argName, widget.cateListModel.argValue).then(
      (res){
        print(res.data);
       setState(() {
          for (var item in res.data['comics']) {
          SortListModel model = SortListModel.fromJson(item);
          list.add(model);
        }
       });
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(title:Text('${widget.cateListModel.sortName}')),
          body: Container(
        child: ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return SortItem((){
                Navigator.push(context, new MaterialPageRoute(builder: ((BuildContext context){
                  return BookIntroPage(list[index].comicId);
                })));
                
              },list[index]);
            },
            separatorBuilder: (BuildContext context, int index) {
              return Divider(height: 0.5,color: Colors.black26,);
            },
            itemCount: list.length),
      ),
    );
  }
}

class SortItem extends StatelessWidget {
   final VoidCallback onpress;
   final SortListModel model;
   
  const SortItem(this.onpress,this.model,{Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
          child: Container(
        height: 180,
        child: Row(
          children: <Widget>[
            Padding(padding: EdgeInsets.all(10),child: Container(child: Image.network('${model.cover}')),),
            Expanded(
              
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
              Padding(padding: EdgeInsets.only(top: 12), child: Text('${model.name}')),
              Padding(padding: EdgeInsets.only(top:0), child: Text('${model.description}', style: TextStyle(color: Colors.black54,fontSize: 13,),
                    maxLines: 3,)),
              Padding(
                  padding: EdgeInsets.only(top: 14),
                  child: Text(
                    '${model.tags.toString()}',
                  )),
              Spacer(),
             // Row(children: <Widget>[Image.asset('name')])
            ]))
          ],
        ),
      ),
    );
  }
}
