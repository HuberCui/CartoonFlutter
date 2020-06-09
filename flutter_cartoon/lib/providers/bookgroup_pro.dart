import 'package:fluttercartoon/PHheader.dart';
import 'package:fluttercartoon/cate_models/CateListModel.dart';
class BookgroupPro extends BasePro{
   GroupRequest _groupRequest;

   BookgroupPro(this._groupRequest) : super(false);
   List<CateListModel> cateList;

   Future <List<CateListModel>> getBookGroup(bool firstLoading) async{
     loadingg(true,firstload: firstloading);
     cateList = await _groupRequest.request_CateList();
     loadingg(false,firstload: firstloading);
   }
  
}