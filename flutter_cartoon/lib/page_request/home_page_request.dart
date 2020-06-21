
import 'package:fluttercartoon/PHheader.dart';
import 'package:fluttercartoon/home_models/book_intro.dart';
import 'package:fluttercartoon/book_detail_models/book_intro_model.dart';
import 'package:fluttercartoon/book_detail_models/book_comment_model.dart';
class HomeRequest{
  //推荐列表
   Future<BookIntro> request_BoutiqueList() async{
       next() async{
         String url  = Api_Address.getBoutiqueList();
         var res = await httpManager.netFetch(url, null, null, RequestMethod.get_method);
         
         print(res.data);

         return BookIntro.fromJson(res.data);
       }

       return await next();
    }

/**vip列表*/
    static request_VipList() async{
      next() async{
        String url  = Api_Address.VipList();
        var res = await httpManager.netFetch(url, null, null, RequestMethod.get_method);
        return res;
      }

      return await next();
    }

    /**订阅列表*/
    static request_NewSubscribeList() async{
      next() async{
        String url  = Api_Address.NewSubscribeList();
        var res = await httpManager.netFetch(url, null, null, RequestMethod.get_method);
        return res;
      }

      return await next();
    }

    /**排行列表*/
    static request_SortList() async{
      next() async{
        String url  = Api_Address.SortList();
        var res = await httpManager.netFetch(url, null, null, RequestMethod.get_method);
        return res;
      }

      return await next();
    }

    /**详情接口*/
    Future<BookDetailIntro> request_CommicDetail(int comic_id) async{
      next() async{
        String url  = Api_Address.CommicDetail();
        var res = await httpManager.netFetch(url, {'comicid':comic_id},null, RequestMethod.get_method);
        return BookDetailIntro.fromJson(res.data);
      }

      return await next();
    }
    /**评论接口*/

  //   {
  //   "code": -22,
  //   "msg": "非法访问",
  //   "data": null
  //  }
    Future<List<BookCommentModel>> request_CommentList(String comic_id,String thread_id) async{
       next() async{
        String url  = Api_Address.CommentList();
        var res = await httpManager.netFetch(url, {'object_id':int.parse(comic_id),'thread_id':int.parse(thread_id)},null, RequestMethod.get_method);
        List<BookCommentModel> list = [];
        for (var item in res.data['commentList']) {
          list.add(BookCommentModel.fromJson(item));
        }
        return list;
      }

      return await next();
    }

    /**猜你喜欢*/
    static request_GuessLikeList() async{
       next() async{
        String url  = Api_Address.GuessLikeList();
        var res = await httpManager.netFetch(url, null,null, RequestMethod.get_method);
        return res;
      }

      return await next();
    }
    /**目录对应的详情*/
    static request_ChapterDetail(String chapter_id)async{
       next() async{
        String url  = Api_Address.ChapterDetail();
        var res = await httpManager.netFetch(url, {'chapter_id':chapter_id},null, RequestMethod.get_method);
        return res;
      }

      return await next();
    }



}