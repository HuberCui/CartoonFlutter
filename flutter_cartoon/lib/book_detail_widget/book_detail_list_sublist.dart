import 'package:flutter/material.dart';
import 'package:fluttercartoon/page_request/home_page_request.dart';
import 'package:fluttercartoon/book_detail_models/book_detail_list_sublist_comic_model.dart';

class BookDetailListSublist extends StatefulWidget {
  @override
  _BookDetailListSublistState createState() => _BookDetailListSublistState();
}

class _BookDetailListSublistState extends State<BookDetailListSublist> {
  List<BookDetailListSublistComicModel> list = List();
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    HomeRequest.request_GuessLikeList().then((res) {
   
      setState(() {
        for (var item in res.data['comics']) {
          list.add(BookDetailListSublistComicModel.fromJson(item));
        }

        print(list);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisSpacing: 0,
              crossAxisSpacing: 5,
              childAspectRatio: 0.5),
          itemCount: list.length,
          shrinkWrap: true,
          //使当前gridview自适应自己高度，解决GridView inside a Listview causing “Vertical viewport was given unbounded height” even when Expanded
          physics: NeverScrollableScrollPhysics(),
          //使这个GridView不随着外边的listview滚动滚动
          itemBuilder: (context, index) {
            BookDetailListSublistComicModel model = list[index];
            return Container(

              child: Column(
                children: <Widget>[
                  Expanded(
                      child: Image.network(
                        model.cover,
                        fit: BoxFit.cover,
                      ),
                      flex: 4),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(model.name,maxLines: 1,),
                        ),
                      ],
                    ),
                    flex: 1,
                  )
                ],
              ),
            );
          }),
    );
  }
}
