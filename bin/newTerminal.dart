
enum Type { VIP, normal }

 class Terminal {
  String busName;
  Type busType;

  Terminal({required this.busName, required this.busType});
  @override
   String toString()=> 'BusName : $busName , BusType : $busType';
  }

class VipBus extends Terminal {
  VipBus({required super.busName, super.busType = Type.VIP});

  static List<List<int>> vipSeats = [
    [01, 0, 02, 03],
    [04, 0, 05, 06],
    [07, 0, 08, 09],
    [10, 0, 11, 12],
    [13, 0, 14, 15],
    [16],
    [17],
    [18],
    [19, 0, 20, 21],
    [22, 0, 23, 24],
    [25, 0, 26, 27],
    [28, 0, 29, 30],
  ];

  void printVipSeats() {
    for (int i = 0; i < vipSeats.length; i++) {
      print(vipSeats[i]);
    }
  }
}

class NormalBus extends Terminal {
  NormalBus({required super.busName, super.busType = Type.normal});

  static List<List<int>> normalSeats = [
    [01, 02, 0, 03, 04],
    [05, 06, 0, 07, 08],
    [09, 10, 0, 11, 12],
    [13, 14, 0, 15, 16],
    [17, 18, 0, 19, 20],
    [21, 22],
    [23, 24],
    [25, 26, 0, 27, 28],
    [29, 30, 0, 31, 32],
    [33, 34, 0, 35, 36],
    [37, 38, 0, 39, 40],
    [41, 42, 0, 43, 44],
  ];

  static void printNormalSeats() {
    for (int i = 0; i < normalSeats.length; i++) {
      print(normalSeats[i]);
    }
  }
}

class DefineTrip extends Terminal {
  DefineTrip(
      {required this.initialPoint,
      required this.destination,
      required this.ticketPrice,
      required super.busName,
      required super.busType});

  String initialPoint;
  String destination;
  double ticketPrice;


  double getTicketPrice(busType, double ticketPrice) {
    if (busType == Type.VIP) {
      double price = 250;
      ticketPrice = price;
      print(ticketPrice);
    } else if (busType == Type.normal) {
      double price2 = 150;
      ticketPrice = price2;
      print(ticketPrice);
    } else {
      print('invalid');
    }
    return 0;
  }

  double reserveTicketCost(busType, double ticketPrice) {
    double priceV = 250;
    double priceN = 150;
    double reservePrice;
    double reservePrice2;
    // 30% of ticket price is the cost of reserving
    if (busType == Type.VIP) {
      ticketPrice = priceV;
      reservePrice = 0.3 * ticketPrice;
      print('Cost of reserving ${Type.VIP} : $reservePrice');
    } else if (busType == Type.normal) {
      ticketPrice = priceN;
      reservePrice2 = 0.3 * ticketPrice;
      print('Cost of reserving ${Type.normal} : $reservePrice2');
    }
    return 0;
  }

  double canselReservedTicket(busType, double ticketPrice) {
    double priceV = 250;
    double priceN = 150;
    double reservePrice;
    double reservePrice2;
    if (busType == Type.VIP) {
      ticketPrice = priceV;
      reservePrice = 0.3 * ticketPrice;
      double refundMoney = 0.2 * reservePrice;
      double lastRefund = reservePrice - refundMoney;
      print('The refund is $lastRefund');
    } else if (busType == Type.normal) {
      ticketPrice = priceN;
      reservePrice2 = 0.3 * ticketPrice;
      double refundMoney = 0.2 * reservePrice2;
      double lastRefund =reservePrice2 - refundMoney;
      print('The refund is $lastRefund');
    } else {
      print('invalid');
    }
    return 0;
  }

  double canselPurchasedTicket(busType, double ticketPrice) {
    double priceV = 250;
    double priceN = 150;
    double refund;
    double canselCost;
    if (busType == Type.VIP) {
      ticketPrice = priceV;
      canselCost = 0.1 * ticketPrice;
      refund = ticketPrice - canselCost;
      print(refund);
    } else if (busType == Type.normal) {
      ticketPrice = priceN;
      canselCost = 0.1 * ticketPrice;
      refund = ticketPrice - canselCost;
      print(refund);
    }else{
      print('invalid');
    }
    return 0 ;
  }

// نمایش فهرست اتوبوسها
  void display() {
    print('----------------------');
    print('busName: $busName\nbus$busType');
    print(
        'Origin:$initialPoint\nDestination:$destination\nTicketPrice:$ticketPrice');
  }
}

// TicketStatus = Seats Status
class TicketStatus extends VipBus {
  TicketStatus({required super.busName, required super.busType});

  void reserveTicket(int input) {
    int? input2;
    super.printVipSeats();
    for (int i = 0; i < VipBus.vipSeats.length; i++) {
      for (int j = 0; j < VipBus.vipSeats[i].length; j++) {
        if (input == VipBus.vipSeats[i][j]) {
          var newL = List.from(VipBus.vipSeats);
          newL[i][j] = input;
          print('*** seat number $input = rr ***');
        } else if (VipBus.vipSeats.contains(input)) {
          print('*** seat number $input = rr ***');
          var newL = List.from(VipBus.vipSeats);
          newL[i][j] = input2!;
          print('*** seat number $input = rr ***');
          print('*** seat number $input2 = rr ***');
          print('*** seat number $input2 Reserved ***');
        }
      }
    }
  }

  void reserveTicketNormal(int input) {
    int? input2;
    // double payment;
    NormalBus.printNormalSeats();
    for (int i = 0; i < NormalBus.normalSeats.length; i++) {
      for (int j = 0; j < NormalBus.normalSeats[i].length; j++) {
        if (input == NormalBus.normalSeats[i][j]) {
          var newL = List.from(NormalBus.normalSeats);
          newL[i][j] = input;
          print('*** seat number $input = rr ***');
        } else if (NormalBus.normalSeats.contains(input)) {
          print('*** seat number $input = rr ***');
          // print('*** seat number $input2 Reserved ***');
          var newL = List.from(NormalBus.normalSeats);
          newL[i][j] = input2!;
          print('*** seat number $input = rr ***');
          print('*** seat number $input2 = rr ***');
          // print('*** seat number $input2 Reserved ***');
        }
      }
    }
  }

  void buyTicket(int inputNum) {
    int? inputNum2;
    super.printVipSeats();
    for (int i = 0; i < NormalBus.normalSeats.length; i++) {
      for (int j = 0; j < NormalBus.normalSeats[i].length; j++) {
        if (inputNum == NormalBus.normalSeats[i][j]) {
          var newL = List.from(NormalBus.normalSeats);
          newL[i][j] = inputNum;
          print('*** seat number $inputNum = bb ***');
        } else if (NormalBus.normalSeats.contains(inputNum)) {
          print('*** seat number $inputNum = bb ***');
          // print('*** seat number $input2 purchased ***');
          var newL = List.from(NormalBus.normalSeats);
          newL[i][j] = inputNum2!;
          print('*** seat number $inputNum2 = bb ***');

        }
      }
    }
  }

  void buyTicketNormal(int buyInputNum) {
    int? buyInputNum2;
    NormalBus.printNormalSeats();
    for (int i = 0; i < NormalBus.normalSeats.length; i++) {
      for (int j = 0; j < NormalBus.normalSeats[i].length; j++) {
        if (buyInputNum == NormalBus.normalSeats[i][j]) {
          var newL = List.from(NormalBus.normalSeats);
          newL[i][j] = buyInputNum;
          print('*** seat number $buyInputNum = bb ***');
        } else if (NormalBus.normalSeats.contains(buyInputNum)) {
          print('*** seat number $buyInputNum = bb ***');
          // print('*** seat number $input2 purchased ***');
          var newL = List.from(NormalBus.normalSeats);
          newL[i][j] = buyInputNum2!;
          print('*** seat number $buyInputNum = bb ***');
          print('*** seat number $buyInputNum2 = bb ***');
          // print('*** seat number $input2 purchased ***');
        }
      }
    }
  }
}
