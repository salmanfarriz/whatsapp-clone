import 'package:flutter/material.dart';
import 'package:whatsappclone/models/bubblemodel.dart';
import 'package:whatsappclone/models/chatmodels.dart';
import 'package:whatsappclone/widgets/chatbubble.dart';
import 'package:whatsappclone/widgets/chatinputs.dart';
import 'package:whatsappclone/widgets/utilitywidget.dart';

class ChatDetailsPage extends StatelessWidget {
  ChatDetailsPage({Key? key, required this.chat_person}) : super(key: key);

  Chat chat_person;

  List<BubbleModel> chatDetailsList = [
    BubbleModel(
        message: "Where are you from ",
        time: '4.30',
        isDelivered: true,
        isReaded: true,
        isSent: true),
    BubbleModel(
      message: "When you come?",
      time: '4.50',
      isDelivered: false,
      isReaded: false,
      isSent: false,
    ),
    BubbleModel(
      message: "Had Lunch?",
      time: '5.10',
      isDelivered: true,
      isReaded: false,
      isSent: true,
    ),
    BubbleModel(
      message: "Please Call Me",
      time: '5.30',
      isDelivered: true,
      isReaded: true,
      isSent: false,
    ),
    BubbleModel(
      message: "bye",
      time: '5.45',
      isDelivered: false,
      isReaded: false,
      isSent: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          child: Row(
            children: [
              Icon(Icons.arrow_back),
              CircleAvatar(
                backgroundImage:
                NetworkImage(chat_person.avatar.toString()),
              ),
            ],
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: const Color(0xFF00796b),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(chat_person.name.toString()),
            Text(
              'online',
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
        leadingWidth: 65,
        actions: [
          InkWell(
              onTap: () {
                // Navigator.push(context, route)
              },
              child: Icon(Icons.video_call)),
          UtilityWidget().widthSpacer(10),
          Icon(Icons.call),
          UtilityWidget().widthSpacer(10),
          Row(
            children: [
              PopupMenuButton(itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    child: Text('View Contact'),
                  ),
                  PopupMenuItem(
                    child: Text('Media,Links, and Docs'),
                  ),
                  PopupMenuItem(child: Text('Search'))
                ];
              }),
            ],
          )
        ],
      ),
      body: Container(
        color: Colors.blueGrey,
        child: Stack(
          children: [
            Image.asset(
              'assets/images/chatbg.jpg',
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
            ListView.builder(
              itemBuilder: (context, index) {
                return chatBubble(
                  singleMsg: chatDetailsList[index],
                );
              },
              itemCount: chatDetailsList.length,
            ),
            ChatInputs(),
          ],
        ),
      ),
    );
  }
}
