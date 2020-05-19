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


}