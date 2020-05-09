import 'package:flutter/material.dart';
import 'package:whats/ui/whatsapp_home.dart';

void main() => runApp(new WhatsApp());

class WhatsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'WhatsApp',
      theme: new ThemeData(
        primaryColor: new Color(0xff075E54),
        accentColor: new Color(0xff25D366),

      ),
      home: new WhatsAppHome(),
    );
  }
}
