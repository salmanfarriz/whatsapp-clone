import 'package:flutter/material.dart';
import 'package:whatsappclone/models/callmodel.dart';

class Callpage extends StatelessWidget {
  Callpage({Key? key}) : super(key: key);

  List callList = [
    // CallModel(avatar: "avatar", name: "name", callarrow: Icon(Icons.arrow_downward_sharp), dateTime: "Today,12.35 PM", symbol: symbol)

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 84, 84, 84),
        onPressed: () {},
        child: Icon(Icons.call),

      ),
    );
  }
}
