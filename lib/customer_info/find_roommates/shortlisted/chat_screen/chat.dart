import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:saturn/custom_widgets/custom_input.dart';
import 'package:saturn/helper_widgets/colors.dart';
import 'package:saturn/helper_widgets/text_style.dart';
import 'package:saturn/models/shortlisted_model/chat_model.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _textController = TextEditingController();
  List<MessageModel> messages_ = [
    MessageModel(
      message: "Hello saturn, i need a roommate at Akoka",
      sender: "John",
      date: "13:05",
    )
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0.1,
        leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: deepBlack,
            ),
            onPressed: () {
              Navigator.pop(context, true);
            }),
        title: Text(
          "John Igwe",
          style: appBarTextStyle,
        ),
        actions: [
          IconButton(
              icon: const Icon(
                Icons.more_vert,
                color: deepBlack,
              ),
              onPressed: () {
                print("heyy");
              }),
        ],
      ),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: messages_.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(5),
                  child: MessageBubble(
                      text: messages_[index].message!,
                      date: messages_[index].date!,
                      isMe: messages_[index].sender == "me"),
                );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: CustomInputField(
                    size: size,
                    text: "",
                    maxLines: 3,
                    minLines: 1,
                    isFieldOnly: true,
                    hintText: "Type a message",
                    isCompulsory: false,
                    controller: _textController,
                  ),
                ),
                const SizedBox(width: 20),
                InkWell(
                  onTap: _sendMessage,
                  child: SvgPicture.asset("assets/icons/send.svg"),
                )
              ],
            ),
          )
        ],
      )),
    );
  }

  void _sendMessage() {
    FocusScope.of(context).unfocus();
    if (_textController.text.isNotEmpty) {
      DateTime now = DateTime.now();
      String formattedTime = DateFormat("HH:mm").format(now);
      final message = _textController.text.trim();
      _textController.clear();
      setState(() {
        messages_.add(
          MessageModel(message: message, sender: "me", date: formattedTime),
        );
      });
    }
  }
}

class MessageBubble extends StatelessWidget {
  const MessageBubble({
    required this.text,
    required this.date,
    required this.isMe,
    super.key,
  });

  final String text;
  final String date;
  final bool isMe;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment:
          isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(
              right: isMe ? 0 : size.width * 0.2,
              left: isMe ? size.width * 0.2 : 0),
          child: Material(
            elevation: 2,
            borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(0),
                bottomLeft:
                    isMe ? const Radius.circular(15) : const Radius.circular(0),
                bottomRight:
                    isMe ? const Radius.circular(0) : const Radius.circular(15),
                topRight: const Radius.circular(0)),
            color: isMe ? purple : chatBgColor,
            child: Padding(
              padding: EdgeInsets.only(
                  top: 10,
                  bottom: 10,
                  left: isMe ? 10 : 20,
                  right: isMe ? 20 : 10),
              child: Text(
                text,
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 16,
                  color: isMe ? white : black,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 5),
        Text(
          date,
          style: const TextStyle(fontSize: 12, color: black),
        ),
      ],
    );
  }
}
