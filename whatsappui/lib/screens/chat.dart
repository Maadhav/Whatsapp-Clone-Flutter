import 'package:flutter/material.dart';
import 'package:whatsappui/model/chat.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messageData.length,
      itemBuilder: (context, i)=>
      Column(
        children: <Widget>[
          Divider(height: 20,),
          ListTile(
            leading: CircleAvatar(
              maxRadius: 25,
              backgroundImage: NetworkImage(messageData[i].imageUrl),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(messageData[i].name,style: TextStyle(fontWeight: FontWeight.bold),)
                ,Text(messageData[i].time,style: TextStyle(color: Colors.grey,fontSize: 16),)
              ],
            ),
            subtitle: Container(
              padding: EdgeInsets.only(top: 5),
              child: Text(messageData[i].message,
              style: TextStyle(fontSize: 15, color: Colors.grey)),
            ),
            onTap: (){},
          ),
        ],
      ),
    );
  }
}