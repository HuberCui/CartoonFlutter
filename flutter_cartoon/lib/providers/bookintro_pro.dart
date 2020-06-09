import 'package:fluttercartoon/PHheader.dart';
import 'package:fluttercartoon/home_models/book_intro.dart';



class BookIntroPro extends BasePro{
    HomeRequest _homeRequest;

    BookIntroPro(this._homeRequest) : super(false);
   BookIntro bookIntro;
   Future<BookIntro> getBoutiqueList(bool firstloading) async{
        loadingg(true,firstloading: firstloading);
        
        bookIntro = await _homeRequest.request_BoutiqueList();
        loadingg(false,firstloading: firstloading);
   }
}