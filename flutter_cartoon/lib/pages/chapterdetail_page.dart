import 'package:flutter/material.dart';
import 'package:fluttercartoon/PHheader.dart';
import 'package:fluttercartoon/book_detail_models/book_intro_model.dart';
import 'package:fluttercartoon/book_detail_models/library_catalogue.dart';
import 'package:fluttercartoon/page_request/home_page_request.dart';
import 'package:fluttercartoon/book_detail_models/chapter_detail_model.dart';
import 'package:fluttercartoon/book_detail_models/chapterdetail_image_list_model.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:fluttercartoon/providers/chapterdetail_pro.dart';
import 'package:provider/provider.dart';

class ChapterDetailPage extends StatefulWidget {
  BookDetailIntro bookDetailIntro;
  int initIndex;
  ChapterDetailPage(this.bookDetailIntro, this.initIndex);

  @override
  _ChapterDetailPageState createState() => _ChapterDetailPageState();
}

class _ChapterDetailPageState extends State<ChapterDetailPage> {
  EasyRefreshController _controller;
  List<LibraryCatalogueModel> _chapter_idlist = [];
  List<ChapterdetailImageListModel> _imageList = [];
  int currentIndex;

  // Future getChapterDetailFromSever(
  //     bool isFirstLauch, bool isHeadRefresh) async {
  //   int requestIndex = 0;
  //   if (isFirstLauch) {
  //     requestIndex = currentIndex;
  //   } else {
  //     if (isHeadRefresh) {
  //       requestIndex = currentIndex - 1;

  //       if (requestIndex <= -1) {
  //         print('现在已经是第一页了');
  //         return;
  //       }
  //     } else {
  //       requestIndex = currentIndex + 1;
  //       if (requestIndex >= _chapter_idlist.length - 1) {
  //         print('已经加载完了，是最后一页了');
  //         return;
  //       }
  //     }
  //   }

  //   return await HomeRequest.request_ChapterDetail(
  //           _chapter_idlist[requestIndex].chapter_id)
  //       .then((res) {
  //     ChapterDetailModel model = ChapterDetailModel.fromJson(res.data);
  //     if (isFirstLauch) {
  //       _imageList = model.chapterdetailImageListModel;
  //     } else {
  //       if (isHeadRefresh) {
  //         _imageList.insertAll(0, model.chapterdetailImageListModel);
  //         currentIndex -= 1;
  //       } else {
  //         _imageList.addAll(model.chapterdetailImageListModel);
  //         currentIndex += 1;
  //       }
  //     }
  //   });
  // }

  Widget aaa(BuildContext context){
     return Scaffold(
      appBar: AppBar(title: Text(widget.bookDetailIntro.comic.name)),
      body: 
    ProviderWidget<ChapterDetailPro>(model: ChapterDetailPro(Provider.of<HomeRequest>(context),widget.bookDetailIntro.chapterlist,widget.initIndex),onReady: (model){

       model.getChapterDetail(true, true);
    },builder: (context,model,_){

      if(model.loading){
 return Container(); 
}
      return EasyRefresh(
        controller: _controller,
        onRefresh: ()async{
           model.getChapterDetail(false, true);
        },
        onLoad: () async {
          model.getChapterDetail(false, false);
        },
        child: ListView.builder(itemBuilder: (context,index){
           ChapterdetailImageListModel mod = model.chapterImageList[index];
           return Container(
             width: Device.device_width(context),
            //  height: Device.device_width(context) * model.height / model.width,
             child: Image.network(mod.img50,fit:BoxFit.cover,)
             );
        },itemCount: model.chapterImageList.length-1,)
      );
    },
    )
    );
  }

  @override
  void initState() {
    _controller = EasyRefreshController();
    // _chapter_idlist = widget.bookDetailIntro.chapterlist;
    // currentIndex = widget.initIndex;
    // // TODO: implement initState
    // super.initState();
    // getChapterDetailFromSever(true, true).then((_) {
    //   setState(() {});
    // });
  }

  @override
  Widget build(BuildContext context) {

     
return aaa(context);
    // return Scaffold(
    //   appBar: AppBar(title: Text(widget.bookDetailIntro.comic.name)),
    //   body: EasyRefresh(
    //     controller: _controller,
    //     onRefresh: () async {
    //       print('onRefresh');
    //       getChapterDetailFromSever(false, true).then((_) {
    //         setState(() {});
    //       });
    //     },
    //     onLoad: () async {
    //       print('onLoad');
    //       getChapterDetailFromSever(false, false).then((_) {
    //         setState(() {});
    //       });
    //     },
    //     child: ListView.builder(itemBuilder: (context,index){
    //        ChapterdetailImageListModel model = _imageList[index];
    //        return Container(
    //          width: Device.device_width(context),
    //         //  height: Device.device_width(context) * model.height / model.width,
    //          child: Image.network(model.img50,fit:BoxFit.cover,)
    //          );
    //     },itemCount: _imageList.length-1,)
    //   ),
    // );
  }
}

