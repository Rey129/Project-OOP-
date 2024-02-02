class Product {
  String name;

  int number;

  int price;

  Product(this.name, this.number, this.price);
}

class Menu extends Product {
  List<String> productList = [];

  Menu(super.name, super.number, super.price, this.productList);

  static Map<int, String> menu = {
    1: ' ثبت محصول',
    2: 'نمایش فهرست محصولات',
    3: 'حذف محصول',
    4: 'ویرایش محصول',
    5: 'نمایش محصولات رو به اتمام',
    6: 'خروج',
  };
// you can put the print of the list above in main
}

class ShoppingCenter extends Menu {
  ShoppingCenter(super.name, super.number, super.price, super.productList);

  factory ShoppingCenter.registerPr(int userInput, String name, int price,
      int number, List<String> productList) {
    if (userInput == Menu.menu.keys.elementAt(0)) {
      print('(Enter product name)(0-return)');
      String? inputName;
      name = inputName!;
      productList.add(name);
      print(productList.length.toString());
      // return ShoppingCenter(name, number, price, productList);
    } else if (userInput == Menu.menu.keys.elementAt(0) && userInput != 0) {
      print('(Enter the product price)(0-return)');
      int? inputPrice;
      price = inputPrice!;
      print('$price');
      // return ShoppingCenter(name, number, newPrice, menu, productList);
    } else if (userInput == Menu.menu.keys.elementAt(0) && userInput != 0) {
      print('(Enter the number of products)(0-return)');
      int? inputNumber;
      number = inputNumber!;
      print('$number');


      // print('product name : $name , Price : $price, number : $number');
    } else if (userInput == 0) {
      print('6-${Menu.menu.values.elementAt(5)}');
    } else {
      print('product added successfully');
    }
    return ShoppingCenter(name, number, price, productList);
  }

  factory ShoppingCenter.exposePrList(int userInput, List<String> productList) {
    if (userInput == Menu.menu.keys.elementAt(1) && productList.isNotEmpty) {
      print(productList.length.toString());
    } else if (userInput != Menu.menu.keys.elementAt(1) && userInput == 0) {
      print('6-${Menu.menu.values.elementAt(5)}');
    }
    return ShoppingCenter.exposePrList(userInput, productList);
  }

  factory ShoppingCenter.deletePr(int userInput, List<String> productList) {
    if (userInput == Menu.menu.keys.elementAt(2)) {
      print('$productList');
    } else if (userInput != Menu.menu.keys.elementAt(2) && userInput == 0) {
      print('6-${Menu.menu.values.elementAt(5)}');
    } else {
      for (int i = 0; i <= productList.length; i++) {
        if (userInput != 0 &&
            productList.isNotEmpty &&
            userInput == productList.elementAt(i)) {
          List<String> removeList = [];
          productList.removeAt(i);
          removeList.addAll(productList);
          print('Selected product deleted successfully');
          print('$removeList');
          return ShoppingCenter.deletePr(userInput, removeList);
        } else if (userInput != Menu.menu.keys.elementAt(2) && userInput == 0) {
          print('6-${Menu.menu.values.elementAt(5)}');
        }
      }
    }
    return ShoppingCenter.deletePr(userInput, productList);
  }

  factory ShoppingCenter.editPr(
      userInput, List<String> productList, int price, int number, String name) {
    if (userInput == Menu.menu.keys.elementAt(3)) {
      print('$productList');
    } else if (userInput != Menu.menu.keys.elementAt(3) && userInput == 0) {
      print('6-${Menu.menu.values.elementAt(5)}');
    } else {
      for (int i = 0; i <= productList.length; i++) {
        if (productList.isNotEmpty && userInput == productList.elementAt(i)) {
          List<String> editedList = [];
          productList.removeAt(i);
          print('(Enter the new product name)(0-return)');
          String? newPrName;
          name = newPrName!;
          productList.add(name);
          editedList.addAll(productList);
          print('$editedList');
          return ShoppingCenter.editPr(
              userInput, editedList, price, number, name);
        }
        if (userInput == 0) {
          print('6-${Menu.menu.values.elementAt(5)}');
        } else {
          print('(Enter new price for product)(0-return)');
        }
        if (userInput == 0) {
          print('6-${Menu.menu.values.elementAt(5)}');
        } else {
          int? editPrice;
          price = editPrice!;
          print(price);
          print('(Enter new quantity for product)(0-return)');
        }
        if (userInput == 0) {
          print('6-${Menu.menu.values.elementAt(5)}');
        } else {
          int? editQuantity;
          number = editQuantity!;
          print('$number');
          return ShoppingCenter.editPr(
              userInput, productList, price, number, name);
        }
      }
    }
    return ShoppingCenter.editPr(userInput, productList, price, number, name);
  }

  void limitedPr(userInput) {
    if (userInput == Menu.menu.keys.elementAt(4) && productList.length < 5) {
      print('product : $productList , price : $price , number : $number');
    }
  }

  void exit(userInput) {
    if (userInput == Menu.menu.keys.elementAt(5)) {
      print('Exit');
    }
  }
}
