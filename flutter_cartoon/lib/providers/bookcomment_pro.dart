import 'package:fluttercartoon/providers/base_pro.dart';
import 'package:fluttercartoon/book_detail_models/book_comment_model.dart';
import 'package:fluttercartoon/PHheader.dart';
class BookCommentPro extends BasePro{
  HomeRequest _homeRequest;
  List<BookCommentModel> commentModelList;
  BookCommentPro(this._homeRequest) : super(false);
  Future<List<BookCommentModel>> getCommentList(String comic_id,String thread_id) async{
      loadingg(true);
      commentModelList = (await _homeRequest.request_CommentList(comic_id,thread_id));
      loadingg(false);
  }
}