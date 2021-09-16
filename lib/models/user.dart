import 'package:flutter/material.dart';

class User {
  num id;
  String namaAwal;
  String namaAkhir;
  String iconUrl;
  Color bgColor;

  User(this.id, this.namaAwal, this.namaAkhir, this.iconUrl, this.bgColor);

  static List<User> generateUsers() {
    return [
    User(1, 'Afnand', 'Fachzevi', 'assets/images/user6.png', Color(0xFF7FACD6)),
    User(2, 'Agus', 'Levi', 'assets/images/user2.png', Color(0xFF7FACD6)),
    User(3, 'Adam', 'M', 'assets/images/user1.png', Color(0xFF7FACD6)),
    User(4, 'Bagus', 'C', 'assets/images/user4.png', Color(0xFF7FACD6)),
    User(5, 'Caca', 'D', 'assets/images/user5.png', Color(0xFF7FACD6)),
    User(6, 'Herman', 'A', 'assets/images/user6.png', Color(0xFF7FACD6)),
    ];
  }
}
