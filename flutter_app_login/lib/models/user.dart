import 'package:flutter/foundation.dart';

class UserModel with ChangeNotifier {
  String name;


  void setName(String newName){
    name = newName;
    notifyListeners();
  }
}