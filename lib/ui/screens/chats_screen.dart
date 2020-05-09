import 'package:flutter/material.dart';
import 'package:whats/model/chat_model.dart';

class ChatsScreen extends StatefulWidget {
  @override
  _ChatsScreenState createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (context, index) => new Column(
        children: <Widget>[
          new Divider(height: 10.0,),
          new ListTile(
            leading: new CircleAvatar(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              backgroundImage: new NetworkImage(dummyData[index].imageUrl),
            ),
            
            title: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(dummyData[index].name, style: new TextStyle(fontWeight: FontWeight.bold),),
                new Text(dummyData[index].time, style: new TextStyle(fontSize: 14.0, color: Colors.grey),)
              ],
            ),
            
            subtitle: new Container(
              padding: const EdgeInsets.only(top: 5.0),
              child: new Text(dummyData[index].message, style: new TextStyle(color: Colors.grey, fontSize: 15.0, ),),
            ),
            
          )
        ],
      ),
    );
  }
}
