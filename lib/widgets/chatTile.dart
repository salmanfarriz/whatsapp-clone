import 'package:flutter/material.dart';
import 'package:whatsappclone/models/chatmodels.dart';
import 'package:whatsappclone/pages/chatdetailsscreen.dart';

class chatTile extends StatelessWidget {
  chatTile({Key? key, required this.chatData}) : super(key: key);

  Chat chatData;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ChatDetailsPage(chat_person: chatData),
            ));
      },
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: chatData.avatar != ''
              ? NetworkImage(chatData.avatar.toString())
              : AssetImage(chatData.isGroup == true
                  ? 'assets/images/download.png'
                  : 'assets/images/ap.webp') as ImageProvider,
          radius: 20,
        ),
        title: Text(chatData.name.toString()),
        subtitle: Text(chatData.message.toString()),
        trailing: Text(chatData.updatedAt.toString()),
      ),
    );
  }
}
