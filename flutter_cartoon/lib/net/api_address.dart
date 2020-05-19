
class Api_Address{
  static const String host = "http://app.u17.com/v3/appV3_3/ios/phone/";
  static const String Authorization = "Basic QWxhZGRpbjpvcGVuIHNlc2FtZQ==";
  static const String Accept = "application/json";
  /**推荐列表*/
  static getBoutiqueList(){
    return "${host}comic/boutiqueListNew";
  }

  /**vip列表*/
  static VipList(){
    return "${host}list/vipList";
  }
  /**订阅列表*/
  static NewSubscribeList(){
  return "${host}list/newSubscribeList";
  }
  /**排行列表*/
  static SortList(){
  return "${host}rank/list";
  }
  /**分类列表*/
  static CateList(){
  return "${host}sort/mobileCateList";
  }
  /**详情接口*/
  static CommicDetail(){
  return "${host}comic/detail_static_new";
  }
  /**目录列表*/
  static CommentList(){
  return "${host}comment/list";
  }
  /**realtime*/
  static RealtimeList(){
  return "${host}comic/detail_realtime";
  }
  /**猜你喜欢*/
  static GuessLikeList(){
  return "${host}comic/guessLike";
  }
  /**分类列表*/
  static CommicList(){
  return "${host}list/commonComicList";
  }
  /**专题列表*/
  static SpecialList(){
  return "${host}comic/special";
  }
  /**章节内容*/
  static ChapterDetail(){
  return "${host}comic/chapterNew";
  }
  /**热门搜索*/
  static SearchHot(){
  return "${host}search/hotkeywordsnew";
  }
  /**相关搜索--关键字搜索*/
  static SearchRelative(){
  return "${host}search/relative";
  }
  /**获取搜索结果接口*/
  static SearchResult(){
  return "${host}search/searchResult";
  }

}