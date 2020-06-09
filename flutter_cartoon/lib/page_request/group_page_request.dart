import 'package:fluttercartoon/PHheader.dart';
import 'package:fluttercartoon/cate_models/CateListModel.dart';
class GroupRequest{
  /**分类列表*/
  Future<List<CateListModel>> request_CateList() async{
    next() async{
      String url  = Api_Address.CateList();
      var res = await httpManager.netFetch(url, null, null, RequestMethod.get_method);
      List<CateListModel> list = [];
       for (var item in res.data['rankingList']) {
          list.add(CateListModel.fromJson(item));
        }
      return list;
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