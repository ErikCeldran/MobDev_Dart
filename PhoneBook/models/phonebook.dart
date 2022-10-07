import 'contacts.dart';
import 'dart:io';

class PhoneBook {
  List<Contact> phbo = [
    Contact("Erik", "Celdran", "09999999901", "Iligan City"),
    Contact("Miguel", "Celdran", "09999999902", "Davao City"),
    Contact("Teddy", "Bear", "09999999903", "Bear City"),
    Contact("Kokomi", "Sangonomiya", "09999999904", "Watatsumi City"),
    Contact("Rex", "Incognito", "09999999905", "Liyue City")
  ];

  displayContacts() {
    for (var contact in phbo) {
      print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
      print("Fullname: ${contact.fname} ${contact.lname}");
      print("Phone Number: ${contact.phoneNumber}");
      print("Address: ${contact.address}");
    }
  }

  add_new() {
    var fname, lname, phoneNumber, address;

    print("Enter Firstname:");
    fname = stdin.readLineSync();

    print("Enter Lastname:");
    lname = stdin.readLineSync();

    print("Enter Phone Number:");
    phoneNumber = stdin.readLineSync();

    print("Enter Address:");
    address = stdin.readLineSync();

    var con = new Contact(fname, lname, phoneNumber, address);
    this.phbo.add(con);
  }
  
  delete(String number) {
    this.phbo.removeWhere((con) => con.phoneNumber == number);
  }
  
  Contact? findContact(String number) {
    Contact? result =
        phbo.firstWhere((element) => element.phoneNumber == number);
    return result;
  }

  searchByNumber(String number) {
    Contact? contact = findContact(number);

    if (contact != null) {
      print("\n~~~~~~~~~~~~~~~~~ SEARCH RESULTS ~~~~~~~~~~~~~~~~~");
      print("Contact Name: ${contact.lname}, ${contact.fname}");
      print("Phone Number: ${contact.phoneNumber}");
      print("Address: ${contact.address}");
    } else {
      print("Contact not in Phone Book\n");
    }
  }
}