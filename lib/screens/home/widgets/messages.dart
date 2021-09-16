import 'package:flutter/material.dart';
import 'package:message_ui/constants/colors.dart';
import 'package:message_ui/models/message.dart';

class Messages extends StatelessWidget {
  final messageList = Message.generateHomePageMessages();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 40),
        decoration: BoxDecoration(
          color: Color(0xFFE7E7E7),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: _buildMessages(),
      ),
    );
  }

  Widget _buildMessages() {
    return ListView.separated(
      padding: EdgeInsets.zero,
        itemBuilder: (context, index) => _buildMessage(index),
        separatorBuilder: (_, index) => SizedBox(
              height: 30,
            ),
        itemCount: messageList.length);
  }

  Widget _buildMessage(int index) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: messageList[index].user.bgColor,
            shape: BoxShape.circle,
          ),
          child: Image.asset(messageList[index].user.iconUrl, width: 60,),
        ),
        SizedBox(width: 10,),
        Flexible(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('${
                    messageList[index].user.namaAwal} ${
                     messageList[index].user.namaAkhir
                    }',
                    style: TextStyle(
                      fontSize: 16,
                      color: kPrimaryDark,
                      fontWeight: FontWeight.bold,
                    ),),
                    Text(
                      messageList[index].terakhirLihat,
                    style: TextStyle(
                      color: kLight,
                    ),),
                ],
              ),
              SizedBox(height: 6,),
              Text(
                messageList[index].pesanTerakhir,
                overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: kPrimaryDark,
                    ),
                ),
            ],
          ),
        )
      ],
    );
  }
}
