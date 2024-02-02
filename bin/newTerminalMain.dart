import 'Menuu.dart';
import 'newTerminal.dart';
import 'dart:io';

void main() {
  TicketStatus ticket = TicketStatus(busName: 'A', busType: Type.VIP);
  Menu terminalMenu = Menu();
  terminalMenu.initialMessage();
  while (true) {
    terminalMenu.exposMainMenu();
    print('Please Enter an option from above');
    String? choice = stdin.readLineSync();
    if (choice == '1') {
      Terminal terminal = Terminal(busName: 'A', busType: Type.VIP);
      print(terminal);
      Terminal terminal01 = Terminal(busName: 'B', busType: Type.normal);
      print(terminal01);
      break;
    }
    if (choice == '2') {
      // VIP BUS------------------------------------------------------
      print('^^Enter information in order to get a trip pre-show');
      print('^start point of your trip:');
      String? userInput = stdin.readLineSync();
      String origin = userInput!;
      print('^destination: ');
      String? userInput2 = stdin.readLineSync();
      String destination = userInput2!;
      double price = 0;
      DefineTrip bus1 = DefineTrip(
          initialPoint: origin,
          destination: destination,
          ticketPrice: price,
          busName: 'A',
          busType: Type.VIP);
      bus1.display();
      bus1.getTicketPrice(Type.VIP, price);
      print('choose a seat (1-30)');
      ticket.reserveTicket(30);
      String? userInput3 = stdin.readLineSync();
      int? seatInput = int.tryParse(userInput3!);
      ticket.reserveTicket(seatInput!);
      print('*** seat number $seatInput Reserved ***');
      print('choose a seat (1-30)');
      ticket.buyTicket(25);
      String? userInput03 = stdin.readLineSync();
      int? seatInput03 = int.tryParse(userInput03!);
      ticket.reserveTicket(seatInput03!);
      //  NORMAL BUS ----------------------------------------------
      print('^Start point of your trip :');

      String? userInput01 = stdin.readLineSync();

      String origin01 = userInput01!;

      print('^Destination: ');

      String? userInput02 = stdin.readLineSync();

      String destination02 = userInput02!;
      double price2 = 0;
      DefineTrip bus2 = DefineTrip(
          initialPoint: origin01,
          destination: destination02,
          ticketPrice: price2,
          busName: 'B',
          busType: Type.normal);
      bus2.display();
      bus2.getTicketPrice(Type.normal, price2);
      TicketStatus ticketNormal = TicketStatus(
          busName: 'B', busType: Type.normal);
      ticketNormal.reserveTicketNormal(14);
      print('Choose a seat (1-44)');
      String? userInput4 = stdin.readLineSync();
      int? seatInputNormal = int.tryParse(userInput4!);
      ticketNormal.reserveTicketNormal(seatInputNormal!);
      print('*** seat number $seatInputNormal Reserved ***');
      ticketNormal.buyTicketNormal(18);
      String? userInput04 = stdin.readLineSync();
      int? seatInputNormal04 = int.tryParse(userInput04!);
      ticketNormal.reserveTicketNormal(seatInputNormal04!);

      break;
    }
    if (choice == '3') {
      //   VIP Bus ----------------------
      print('^start point of your trip:');
      String? userInput = stdin.readLineSync();
      String origin = userInput!;
      print('^destination: ');
      String? userInput2 = stdin.readLineSync();
      String destination = userInput2!;
      DefineTrip description = DefineTrip(initialPoint: origin,
          destination: destination,
          ticketPrice: 250,
          busName: 'A',
          busType: Type.VIP);
      print('pre-show of trip');
      description.display();
    //   Normal Bus ----------------------
      DefineTrip description2 = DefineTrip(initialPoint: origin,
          destination: destination,
          ticketPrice: 150,
          busName: 'B',
          busType: Type.normal);
      print('pre-show of trip');
      description2.display();
      break;
    } if (choice == '4'){
      print('^^^ Reservation ^^^');
      // VIP Bus---------------------------
      TicketStatus ticketV = TicketStatus(busName: 'A', busType: Type.VIP);
      print ('Enter a seat number (1-30)');
      String ?user = stdin.readLineSync();
      int? vSeatNum = int.tryParse(user!);
      ticketV.reserveTicket(vSeatNum!);
    //   Normal Bus ----------------------
      TicketStatus ticketN = TicketStatus(busName: 'B', busType: Type.normal);
      print ('Enter a seat number (1-44)');
      String ?user01 = stdin.readLineSync();
      int? nSeatNum = int.tryParse(user01!);
      ticketN.reserveTicketNormal(nSeatNum!);
      break;
    } if ( choice == '5'){
      print('^^^ Purchase Ticket ^^^');
      // VIP Bus---------------------------
      TicketStatus ticketV = TicketStatus(busName: 'A', busType: Type.VIP);
      print ('Enter a seat number (1-30)');
      String ?user = stdin.readLineSync();
      int? vSeatNum = int.tryParse(user!);
      ticketV.buyTicket(vSeatNum!);
      //   Normal Bus ----------------------
      TicketStatus ticketN = TicketStatus(busName: 'B', busType: Type.normal);
      print ('Enter a seat number (1-44)');
      String ?user01 = stdin.readLineSync();
      int? nSeatNum = int.tryParse(user01!);
      ticketN.buyTicketNormal(nSeatNum!);
      break;
    }if (choice == '6'){
      print('^^^ Cancelling ^^^');
      //   VIP Bus ----------------------
      print('^start point of your trip:');
      String? userInput = stdin.readLineSync();
      String origin = userInput!;
      print('^destination: ');
      String? userInput2 = stdin.readLineSync();
      String destination = userInput2!;
      DefineTrip description = DefineTrip(initialPoint: origin,
          destination: destination,
          ticketPrice: 250,
          busName: 'A',
          busType: Type.VIP);
      print('pre-show of trip');
      description.display();
      // double? price01 ;
      description.canselReservedTicket(Type.VIP, 250);
      description.canselPurchasedTicket(Type.VIP, 250);
      //   Normal Bus ----------------------
      DefineTrip description2 = DefineTrip(initialPoint: origin,
          destination: destination,
          ticketPrice: 150,
          busName: 'B',
          busType: Type.normal);
      print('pre-show of trip');
      description2.display();
      // double ?price;
      description2.canselReservedTicket(Type.normal,150);
      description2.canselPurchasedTicket(Type.normal, 150);

    }
  }




}
