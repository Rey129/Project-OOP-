import 'Newww.dart';
import 'dart:io';
void main(){
  print('${Menu.menu}');
  print('please select an option');
  String userName='';
  List<String>userList=[];
  String ? inputNum = stdin.readLineSync();
  if (inputNum!=null){
    int userNum = int.parse(inputNum);
    ShoppingCenter myShop = ShoppingCenter.registerPr(userNum, userName, userNum, userNum, userList);
    print(myShop);
  }

}