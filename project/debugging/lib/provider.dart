import 'package:flutter/cupertino.dart';

class CounterProvider extends ChangeNotifier{

  int counter =0;


  void increment(){

    var data = 1 ;
    counter+=1;
    notifyListeners();
  }


}