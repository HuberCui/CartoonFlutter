import 'package:fluttercartoon/PHheader.dart';

class GroupRequest{
  /**分类列表*/
  static request_CateList() async{
    next() async{
      String url  = Api_Address.CateList();
      var res = await httpManager.netFetch(url, null, null, RequestMethod.get_method);
      return res;
    }

    return await next();
  }

  /**分类详情*/
  static request_CommicList(int argCon,String argName,int argValue) async{
    next() async{
      String url  = Api_Address.CommicList();
      
      
      var res = await httpManager.netFetch(url, {'argName':argName,'argCon':argCon,'argValue':argValue}, null, RequestMethod.get_method);
      return res;
    }

    return await next();
  }

}