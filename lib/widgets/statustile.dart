import 'package:flutter/material.dart';
import 'package:whatsappclone/models/statusmodel.dart';

class statusTile extends StatelessWidget {
  statusTile({Key? key, required this.StatusData}) : super(key: key);

  StatusModel StatusData;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(StatusData.avatar.toString()),
          radius: 20,
        ),
        title: Text(StatusData.name.toString()),
        subtitle: Text(StatusData.date.toString()),
        trailing: Text(StatusData.time.toString()),
      ),
    );
  }
}
