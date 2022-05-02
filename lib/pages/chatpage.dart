import 'package:flutter/material.dart';
import 'package:whatsappclone/models/chatmodels.dart';
import 'package:whatsappclone/widgets/chatTile.dart';

class Chatpage extends StatelessWidget {
  Chatpage({Key? key}) : super(key: key);

  List<Chat> chatList = [
    Chat(
      avatar:
      'https://icones.pro/wp-content/uploads/2021/03/avatar-de-personne-icone-homme.png',
      name: 'Annu',
      isGroup: false,
      updatedAt: '10.12 am',
      message: 'Hello babu...',
    ),
    Chat(
      avatar:
          'https://thumbs.dreamstime.com/z/male-avatar-icon-portrait-handsome-young-man-face-businessman-suit-necktie-vector-illustration-%D0%B3%D1%9F%D0%B3%D2%91%D0%B3%C2%B7%D0%B3-%D0%B3%D1%96%D0%B3%D1%98-187127093.jpg',
      name: 'Anshu',
      isGroup: false,
      updatedAt: '10.45 am',
      message: 'Hello Anshu...',
    ),
    Chat(
      avatar:
          'https://cdn2.vectorstock.com/i/1000x1000/26/66/profile-icon-member-society-group-avatar-vector-18572666.jpg',
      name: 'Kozhikode',
      isGroup: true,
      updatedAt: '12.12 am',
      message: 'Hello...',
    ),
    Chat(
      avatar: '',
      // 'https://www.nicepng.com/png/detail/131-1318812_avatar-group-icon.png',
      name: 'malappuram',
      isGroup: true,
      updatedAt: '1.12 am',
      message: 'Hello...',
    ),
    Chat(
      avatar:
          'https://icones.pro/wp-content/uploads/2021/03/avatar-de-personne-icone-femme.png',
      name: 'Hazi',
      isGroup: false,
      updatedAt: '5.12 am',
      message: 'hi...',
    ),
    Chat(
      avatar:
          'https://i.zoomtventertainment.com/story/KGF_Yash.jpeg',
      name: 'Rocky',
      isGroup: false,
      updatedAt: '6.12 am',
      message: 'hi am here...',
    ),
    Chat(
      avatar:
          'https://www.koimoi.com/wp-content/new-galleries/2022/02/allu-arjun-spoofing-south-cinema-in-new-zomato-advertisement-displeases-his-fans-heres-how-they-reacted-001.jpg',
      name: 'Allu',
      isGroup: false,
      updatedAt: '8.15 am',
      message: 'Pushpaa...'
    ),
    Chat(
      avatar:
          'https://static.toiimg.com/thumb/msid-90044561,width-900,height-1200,resizemode-6.cms',
      name: 'Yash',
      isGroup: false,
      updatedAt: '6.12 am',
      message: 'koiiiii...',
    ),
    Chat(
      avatar:
          'https://www.koimoi.com/wp-content/new-galleries/2022/02/allu-arjun-spoofing-south-cinema-in-new-zomato-advertisement-displeases-his-fans-heres-how-they-reacted-001.jpg',
      name: 'Surya',
      isGroup: false,
      updatedAt: '10.15 am',
      message: 'hooooooooooooooo...'
    ),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.message),
        backgroundColor: Color(0xFF00796b),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return chatTile(chatData: chatList[index]);
        },
        itemCount: chatList.length,
      ),
    );
  }
}
