import 'package:emoji_picker/emoji_picker.dart';
import 'package:flutter/material.dart';
import 'package:whatsappclone/widgets/utilitywidget.dart';

class ChatInputs extends StatefulWidget {
  const ChatInputs({Key? key}) : super(key: key);

  @override
  State<ChatInputs> createState() => _ChatInputsState();
}

class _ChatInputsState extends State<ChatInputs> {
  bool showsend = false;

  bool showemoji = false;

  FocusNode _focusNode = FocusNode();

  @override
  // void initState() {
  //   super.initState();

  //   _focusNode.addListener(() {
  //     if(_focusNode.hasFocus){
  //       setState(() {
  //         showemoji == false;
  //       });
  //     }
  //   });

  // }
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width - 45,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: TextField(
                    focusNode: _focusNode, //
                    onChanged: (value) {
                      if (value.length > 0) {
                        setState(() {
                          showsend = true;
                        });
                      } else {
                        setState(() {
                          showsend = false;
                        });
                      }

                      print(value);
                    },
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Message',
                      prefixIcon: IconButton(
                        onPressed: () {
                          _focusNode.unfocus();

                          setState(() {
                            showemoji = !showemoji;
                          });
                        },
                        icon: Icon(
                          showemoji == false
                              ? Icons.emoji_emotions
                              : Icons.keyboard,
                          color: Colors.grey,
                        ),
                      ),
                      suffixIcon: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            onPressed: () {
                              showModalBottomSheet(
                                  context: context,
                                  builder: (context) {
                                    return menus();
                                  },
                                  backgroundColor: Colors.transparent);
                            },
                            icon: Icon(Icons.attach_file),
                          ),
                          UtilityWidget().widthSpacer(10),
                          Icon(Icons.camera_alt),
                          UtilityWidget().widthSpacer(10),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              CircleAvatar(
                radius: 20,
                child: showsend == true ? Icon(Icons.send) : Icon(Icons.mic),
                backgroundColor: Color(0xFF00796b),
              ),
            ],
          ),
        ),
        _focusNode.hasFocus //for display keyboard or emoji
            ? Container()
            : showemoji == true
                ? //emoji print
                selectEmoji()
                : Container()
      ],
    );
  }

  Widget menus() {
    return Container(
      height: 290,
      width: MediaQuery.of(context).size.width,
      child: Card(
        margin: EdgeInsets.fromLTRB(10, 10, 10, 40),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 20,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  iconmenus(
                    Icon(Icons.insert_drive_file),
                    Colors.indigo,
                    'Document',
                    () {},
                  ),
                  iconmenus(
                    Icon(Icons.camera_alt),
                    Colors.pink,
                    'Camera',
                    () {},
                  ),
                  iconmenus(
                    Icon(Icons.insert_photo),
                    Colors.purple,
                    'Gallery',
                    () {},
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  iconmenus(
                    Icon(Icons.headphones),
                    Colors.orange,
                    'Audio',
                    () {},
                  ),
                  iconmenus(
                    Icon(Icons.location_pin),
                    Colors.teal,
                    'Location',
                    () {},
                  ),
                  iconmenus(
                    Icon(Icons.contact_page),
                    Colors.blue,
                    'Contact',
                    () {},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget iconmenus(
    Icon icon,
    Color color,
    String text,
    Function fun,
  ) {
    return GestureDetector(
      onTap: () {
        fun();
      },
      child: Column(
        children: [
          CircleAvatar(
            child: icon,
            backgroundColor: color,
            radius: 30,
          ),
          SizedBox(height: 10),
          Text(text),
        ],
      ),
    );
  }

  Widget selectEmoji() {
    return EmojiPicker(
      onEmojiSelected: (emoji, category) {
        print(category);
      },
    );
  }
}
