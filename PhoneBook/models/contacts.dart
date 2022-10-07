class Contact {
  String fname;
  String lname;
  String phoneNumber;
  String address;

  Contact(this.fname, this.lname, this.phoneNumber, this.address);

  toString() {
    return '$fname $lname $phoneNumber $address';
  }
}