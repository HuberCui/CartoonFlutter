import 'package:flutter/cupertino.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:fluttercartoon/PHheader.dart';

class BasePro with ChangeNotifier {
  bool loading = false;
   bool firstloading; //不要在这赋值，不然会报错
  BasePro(this.loading,{this.firstloading = true});
  void loadingg(bool loading,{bool firstload}) {
    this.loading = loading;
    if(firstload != null){
       this.firstloading = firstloading;
    }
    
    
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