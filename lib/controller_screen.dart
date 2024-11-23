import 'package:flutter/material.dart';

class ControllerProvider extends ChangeNotifier{
  List product =['A','B','C','D','E','F'];
  List twiceproduct =[] ;
  void addToList(String itemBuilder){
    twiceproduct.add(itemBuilder);
    notifyListeners();
  }
}