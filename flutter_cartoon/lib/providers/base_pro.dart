import 'package:flutter/cupertino.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:fluttercartoon/PHheader.dart';

class BasePro with ChangeNotifier {
  bool loading = false;
   bool firstloading = true;
  BasePro(this.loading,{this.firstloading});
  void loadingg(bool loading,{bool firstloading}) {
    this.loading = loading;
    this.firstloading = firstloading;
    if(loading){
      WidgetsBinding.instance.addPostFrameCallback((_) {
      EasyLoading.show(status: 'loading...');
    });
    }else{
       WidgetsBinding.instance.addPostFrameCallback((_) {
      EasyLoading.dismiss();
    });
    }
    notifyListeners();
  }
}