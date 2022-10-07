import 'models/phonebook.dart';

void main() {
  //  New Phonebook with initialized contacts
  var pb = new PhoneBook();

  // Lists all contacts in phone book
  print("\nPhone Book Contacts:\n");
  pb.displayContacts();

  // User input for new contact
  pb.add_new();

  // Lists all contacts after addition of contact
  print("\nPhone Book Contacts\n");
  pb.displayContacts();

  // Contact Deletion and then lists all contacts after
  pb.delete("09999999902");
  print("\nPhone Book Contacts:\n");
  pb.displayContacts();

  // Contact Search through unique number
  pb.searchByNumber("09999999904");
}