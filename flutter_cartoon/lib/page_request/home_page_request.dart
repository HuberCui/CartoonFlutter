
import 'package:fluttercartoon/PHheader.dart';

class HomeRequest{
  //推荐列表
   static request_BoutiqueList() async{
       next() async{
         String url  = Api_Address.getBoutiqueList();
         var res = await httpManager.netFetch(url, null, null, RequestMethod.get_method);

         print(res.data);
         return res;
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
    static request_CommicDetail(int comic_id) async{
      next() async{
        String url  = Api_Address.CommicDetail();
        var res = await httpManager.netFetch(url, {'comicid':comic_id},null, RequestMethod.get_method);
        return res;
      }

      return await next();
    }
    /**评论接口*/

  //   {
  //   "code": -22,
  //   "msg": "非法访问",
  //   "data": null
  //  }
    static request_CommentList(String comic_id,String thread_id) async{
       next() async{
        String url  = Api_Address.CommentList();
        var res = await httpManager.netFetch(url, {'object_id':int.parse(comic_id),'thread_id':int.parse(thread_id)},null, RequestMethod.get_method);
        return res;
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



}