import 'package:message_ui/models/user.dart';

class Message {
  User user;
  String pesanTerakhir;
  String terakhirLihat;
  bool isContinue;
  Message(this.user, this.pesanTerakhir, this.terakhirLihat,
      {this.isContinue = false});


  static List<Message> generateHomePageMessages() {
    return [
      Message(users[0], 'kalo mau kursus flutix wajib sudah belajar yg mana aja yah om', '18:30'),
      Message(users[1], 'Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.Please make sure to update tests as appropriate.',
      '18:40'),
      Message(users[2], 'A library that stores int, double, String and bool in encrypted storage.', '18:50'),
      Message(users[3], 'Vault stores it s contents in persistent storage.', '19:00'),
      Message(users[4], 'hey there I am using message UI From Afnand...', '19:10'),
      Message(users[5], 'hey there I am using message UI From Afnand...', '19:15'),
    ];
  }
}

var users = User.generateUsers();
