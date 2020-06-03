import 'package:flutter/material.dart';
import 'package:fluttercartoon/book_detail_models/book_intro_model.dart';
import 'package:fluttercartoon/book_detail_models/library_catalogue.dart';

class BookCatalogueList extends StatelessWidget {
  BookDetailIntro bookDetailIntro;

  BookCatalogueList(this.bookDetailIntro);

 String getTime(){
    int datemill = bookDetailIntro.chapterlist.last.pass_time;
  
    DateTime lastDate = DateTime.fromMillisecondsSinceEpoch(datemill*1000);
    
    String nn = lastDate.year.toString()+'-'+lastDate.month.toString()+'-'+lastDate.day.toString();
     
     return nn;
  }

  @override
  Widget build(BuildContext context) {

 
  
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        shrinkWrap: true,
        //使当前gridview自适应自己高度，解决GridView inside a Listview causing “Vertical viewport was given unbounded height” even when Expanded
        physics: NeverScrollableScrollPhysics(),
        //使这个GridView不随着外边的listview滚动滚动
        slivers: <Widget>[
          SliverToBoxAdapter(
            
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                 bookDetailIntro == null ?Text('') :Padding(
                   padding: const EdgeInsets.only(left:15.0),
                   child: Text('目录'+getTime()+'更新'+'${bookDetailIntro.chapterlist.last.name}'),
                 ),

                
                 ChangeTextBtn('正序', Colors.black54,selectString: '倒序',)
              ],
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(left: 10, right: 10),
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 3.9),
              delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int position) {
                    LibraryCatalogueModel model =
                        bookDetailIntro.chapterlist[position];

                    return GestureDetector(
                                          child: Container(
                        child: model == null ? Text('') : Text('${model.name}'),
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                              color: Colors.black12,
                              width: 1.0,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      onTap: (){
                           print(model.name);
                      },
                    );
                  },
                  childCount: bookDetailIntro.chapterlist.length,
                 ),
            ),
          ),
        ],
      ),
    );
  }
}


class ChangeTextBtn extends StatefulWidget {
  String selectString;
  @required String unSelectString;
  @required Color textColor;
  Color selectTextColor;
  ChangeTextBtn(this.unSelectString,this.textColor,{this.selectTextColor,this.selectString});
  @override
  _ChangeTextBtnState createState() => _ChangeTextBtnState();
}

class _ChangeTextBtnState extends State<ChangeTextBtn> {

  bool select = false;
  
 
  @override
  Widget build(BuildContext context) {
    widget.selectString ??= widget.unSelectString;
    widget.selectTextColor ??= widget.textColor;
    return FlatButton(
      child:select ? Text(widget.selectString,style: TextStyle(color:widget.selectTextColor),) :Text(widget.unSelectString,style: TextStyle(color:widget.textColor),),
      onPressed: (){
        
        setState(() {
          select = !select;
        });

      },
    );
  }
}