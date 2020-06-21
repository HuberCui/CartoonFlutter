import 'package:flutter/material.dart';
import 'package:fluttercartoon/PHheader.dart';
import 'package:fluttercartoon/book_detail_models/chapter_detail_model.dart';
import 'package:fluttercartoon/book_detail_models/chapterdetail_image_list_model.dart';
import 'package:fluttercartoon/book_detail_models/library_catalogue.dart';
class ChapterDetailPro extends BasePro{
  HomeRequest homeRequest;

  List<LibraryCatalogueModel> chapter_idlist;
  int currentIndex;

  Future<void> Function() onrefresh;
  Future<void> Function() onLoad;

  ChapterDetailPro(this.homeRequest,this.chapter_idlist,this.currentIndex, {this.onrefresh,this.onLoad}):super(false);

  List<ChapterdetailImageListModel> chapterImageList = [];

  Future<List<ChapterdetailImageListModel>> getChapterDetail(bool isFirstLauch, bool isHeadRefresh)async{

    int requestIndex = 0;
    if (isFirstLauch) {
      requestIndex = currentIndex;
    } else {
      if (isHeadRefresh) {
        requestIndex = currentIndex - 1;

        if (requestIndex <= -1) {
          print('现在已经是第一页了');
          return chapterImageList;
        }
      } else {
        requestIndex = currentIndex + 1;
        if (requestIndex >= chapter_idlist.length - 1) {
          print('已经加载完了，是最后一页了');
          return chapterImageList;
        }
      }
    }
    

    loadingg(true);

    ChapterDetailModel chapterDetailModel = await homeRequest.request_ChapterDetail(chapter_idlist[requestIndex].chapter_id);
    if(isFirstLauch){
       chapterImageList.addAll(chapterDetailModel.chapterdetailImageListModel);
    }else{
      if(isHeadRefresh){
        currentIndex -= 1;
       
chapterImageList.insertAll(0, chapterDetailModel.chapterdetailImageListModel);   
        
        
      }else{
currentIndex += 1;
        
chapterImageList.addAll(chapterDetailModel.chapterdetailImageListModel);
        
        
      }
    }
   
    loadingg(false);
  }
}