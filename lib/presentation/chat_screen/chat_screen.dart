import 'package:chat_ui/models/message_model.dart';
import 'package:chat_ui/widgets/custom_text.dart';
import 'package:flutter/material.dart';

import '../../models/user_model.dart';

class ChatScreen extends StatefulWidget {
  ///for actual app here we have to pass id
  final User user;

  ChatScreen({required this.user});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.white,
            size: 25,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: CustomText(
          text: widget.user.name,
          color: Colors.white,
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_horiz,
              size: 30,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: InkWell(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  ),
                  color: Colors.white,
                ),
                child: ListView.builder(
                  reverse: true,
                  itemCount: messages.length,
                  padding: EdgeInsets.only(top: 15),
                  itemBuilder: (context, index) {
                    final bool isMe =
                        messages[index].sender.id == currentUser.id;
                    return _buildMessage(messages[index], isMe);
                  },
                ),
              ),
            ),
            _buildTextField(),
          ],
        ),
      ),
    );
  }

  _buildMessage(Message message, bool isMe) {
    return Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.75,
          decoration: BoxDecoration(
            color:
                isMe ? Colors.amberAccent.withOpacity(0.25) : Color(0xffffefee),
            borderRadius: isMe
                ? BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  )
                : BorderRadius.only(
                    topRight: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
          ),
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
          margin: isMe
              ? EdgeInsets.only(top: 8, bottom: 8, left: 80)
              : EdgeInsets.only(top: 8, bottom: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: message.time,
                color: Colors.blueGrey,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(height: 8),
              CustomText(
                text: message.text,
                color: Colors.blueGrey,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ],
          ),
        ),
        isMe
            ? SizedBox()
            : IconButton(
                onPressed: () {},
                icon: message.isLiked
                    ? Icon(Icons.favorite)
                    : Icon(
                        Icons.favorite_border,
                      ),
                color: message.isLiked
                    ? Theme.of(context).primaryColor
                    : Colors.blueGrey,
              ),
      ],
    );
  }

  ///textfield
  _buildTextField() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      height: 70,
      color: Colors.white,
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.photo,
              size: 25,
              color: Theme.of(context).primaryColor,
            ),
          ),
          Expanded(
            child: TextFormField(
              textCapitalization: TextCapitalization.sentences,
              onChanged: (value) {},

              ///to remove the underline from textfield , write collapsed
              decoration: InputDecoration.collapsed(
                hintText: 'Send a Message ...',
                hintStyle: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.send,
              size: 25,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
