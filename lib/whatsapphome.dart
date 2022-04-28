import 'package:flutter/material.dart';
import 'package:whatsappclone/pages/camera.dart';
import 'package:whatsappclone/pages/chatpage.dart';
import 'package:whatsappclone/pages/statuspage.dart';

class WhatsappHome extends StatefulWidget {
  // TabController tab_Controller = TabController(length: 4, vsync: vsync)
  WhatsappHome({Key? key}) : super(key: key);

  @override
  State<WhatsappHome> createState() => _WhatsappHomeState();
}

class _WhatsappHomeState extends State<WhatsappHome>
    with SingleTickerProviderStateMixin {
  late TabController tab_Controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tab_Controller = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF00796b),
          title: const Text('Whatsapp'),
          actions: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search),
                ),
                PopupMenuButton(itemBuilder: (context) {
                  return [
                    PopupMenuItem(
                      child: Text('New Group'),
                    ),
                    PopupMenuItem(
                      child: Text('New Broadcast'),
                    ),
                    PopupMenuItem(
                      child: Text('Linked Devices'),
                    ),
                    PopupMenuItem(
                      child: Text('Started Messages'),
                    ),
                    PopupMenuItem(
                      child: Text('Payment'),
                    ),
                    PopupMenuItem(
                      child: Text('Settings'),
                    ),
                    PopupMenuItem(
                      child: Text('New Broadcast'),
                    ),
                  ];
                })
              ],
            )
          ],
          bottom: TabBar(
            controller: tab_Controller,
            tabs: [
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
              Tab(icon: Text('Chats')),
              Tab(icon: Text('Status')),
              Tab(icon: Text('Calls'))
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Camera(),
            Chatpage(),
            Statuspage(),
            Text('Calls'),
          ],
          controller: tab_Controller,
        ),
      ),
    );
  }
}