import 'package:flutter/material.dart';
import 'package:whats/ui/screens/calls_screen.dart';
import 'package:whats/ui/screens/camera_screen.dart';
import 'package:whats/ui/screens/chats_screen.dart';
import 'package:whats/ui/screens/status_screen.dart';

class WhatsAppHome extends StatefulWidget {
  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome> with
    SingleTickerProviderStateMixin {

    TabController _tabController;
    @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("WhatsApp"),
        elevation: 0.8,
        bottom: new TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.camera_alt),),
            new Tab(text: "CHATS",),
            new Tab(text: "STATUS",),
            new Tab(text: "CALLS",)
          ],
        ),
      ),




      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          new CameraScreen(),
          new ChatsScreen(),
          new StatusScreen(),
          new CallsScreen(),
        ],
      ),

      floatingActionButton: new FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: new Icon(Icons.message),
        onPressed: (){},
        elevation: 10.0,
      ),

    );
  }
}
