import 'package:fluttercartoon/PHheader.dart';
import 'package:fluttercartoon/book_detail_models/book_intro_model.dart';

class BookDetailPro extends BasePro{
  HomeRequest _homeRequest;
  BookDetailPro(this._homeRequest):super(false);
  BookDetailIntro bookDetailModel;
  Future<BookDetailIntro> getBookDetail(int commic_id)async{
       loadingg(true);
      bookDetailModel = await _homeRequest.request_CommicDetail(commic_id);
       loadingg(false);
  }

}