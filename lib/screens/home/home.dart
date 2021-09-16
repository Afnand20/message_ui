import 'package:flutter/material.dart';
import 'package:message_ui/constants/colors.dart';
import 'package:message_ui/screens/home/widgets/messages.dart';
import 'package:message_ui/screens/home/widgets/status_contacts.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      body: Container(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text('Message\nUI',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                  ),
                ),
                SizedBox(width: 165,),
          Expanded(
                  child: Container(
                            padding: EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.3),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(Icons.call, size: 30,color: Colors.white,),
                          ),
                ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.3),
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.person, size: 30,color: Colors.white,),
            ),
          ),
              ],
            ),
            StatusContacts(),
            Messages()
          ],
        ),
      ),
    );
  }
}