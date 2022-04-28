import 'package:flutter/material.dart';
import 'package:whatsappclone/models/bubblemodel.dart';

class chatBubble extends StatefulWidget {
  chatBubble({Key? key, required this.singleMsg}) : super(key: key);
  BubbleModel singleMsg;

  @override
  State<chatBubble> createState() => _chatBubbleState();
}

class _chatBubbleState extends State<chatBubble> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: widget.singleMsg.isSent == true
          ? Alignment.centerRight
          : Alignment.centerLeft,
      child: ConstrainedBox(
        constraints:
            BoxConstraints(maxWidth: MediaQuery.of(context).size.width - 100),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          color: widget.singleMsg.isSent == true
              ? Color.fromARGB(255, 229, 255, 199)
              : Colors.white,
          child: Stack(
            children: [
              Positioned(
                right: 5,
                bottom: 5,
                child: Row(
                  children: [
                    Text(
                      widget.singleMsg.time,
                      style: TextStyle(fontSize: 12),
                    ),
                    widget.singleMsg.isSent == true
                        ? widget.singleMsg.isDelivered == true
                            ? Icon(Icons.done_all,
                                size: 15,
                                color: widget.singleMsg.isReaded == true
                                    ? Colors.blue
                                    : Color.fromARGB(255, 46, 46, 46))
                            : Icon(Icons.done)
                        : Container()
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 10, 55, 10),
                child: Text(
                  widget.singleMsg.message,
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ],
          ),
          margin: EdgeInsets.all(10),
        ),
      ),
    );
  }
}
