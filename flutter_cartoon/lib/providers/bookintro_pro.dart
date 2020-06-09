import 'package:fluttercartoon/PHheader.dart';
import 'package:fluttercartoon/home_models/book_intro.dart';

class BookIntroPro extends BasePro {
  HomeRequest _homeRequest;

  BookIntroPro(this._homeRequest) : super(false);
  BookIntro bookIntro;
  Future<BookIntro> getBoutiqueList(bool firstloading) async {
    loadingg(true, firstload: firstloading);

    bookIntro = await _homeRequest.request_BoutiqueList();
    loadingg(false, firstload: firstloading);
  }
}
