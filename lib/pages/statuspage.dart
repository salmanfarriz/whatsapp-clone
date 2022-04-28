import 'package:flutter/material.dart';
import 'package:whatsappclone/models/chatmodels.dart';
import 'package:whatsappclone/models/statusmodel.dart';
import 'package:whatsappclone/pages/camera.dart';
import 'package:whatsappclone/widgets/statustile.dart';
import 'package:whatsappclone/widgets/utilitywidget.dart';

class Statuspage extends StatelessWidget {
  Statuspage({
    Key? key,
  }) : super(key: key);

  List statusList = [
    StatusModel(
        avatar:
            'https://images.unsplash.com/photo-1604725333736-1f962a6218d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YmVhdXRpZnVsJTIwc3Vuc2V0fGVufDB8fDB8fA%3D%3D&w=1000&q=80',
        name: 'Anshu',
        date: 'Today,',
        time: '10.25 am'),
    StatusModel(
        avatar:
            'https://icones.pro/wp-content/uploads/2021/03/avatar-de-personne-icone-femme.png',
        name: 'Hasi',
        date: 'Today,',
        time: '8.45 am'),
    StatusModel(avatar: '', name: 'Ethel', date: 'Today,', time: '7.00 am'),
    StatusModel(avatar: '', name: 'Allu', date: 'Yesterday,', time: '11.45 pm'),
    StatusModel(avatar: '', name: 'Anu', date: 'Yesterday,', time: '9.45 pm'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton.small(
              backgroundColor: Colors.grey,
              onPressed: () {},
              child: Icon(
                Icons.edit,
                color: Color.fromARGB(221, 45, 45, 45),
              ),
              elevation: 5),
          SizedBox(
            height: 5,
          ),
          FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Camera(),
                ),
              );
            },
            child: Icon(Icons.camera_alt),
            backgroundColor: Color.fromARGB(255, 3, 120, 108),
          ),
        ],
      ),
      body: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.amber,
            ),
            title: Text('My Status'),
            subtitle: Text(
              'Tap to add status updates',
              style: TextStyle(fontSize: 12),
            ),
          ),
          Row(
            children: [
              UtilityWidget().widthSpacer(15),
              Text(
                'Recent updates',
                textAlign: TextAlign.left,
              ),
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height - 232,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return statusTile(StatusData: statusList[index]);
              },
              itemCount: statusList.length,
            ),
          ),
        ],
      ),
    );
  }
}
