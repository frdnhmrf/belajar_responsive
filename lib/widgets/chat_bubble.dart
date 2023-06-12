// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ChatBubbleSmall extends StatelessWidget {
  final String text;
  final bool isSender;
  const ChatBubbleSmall({
    Key? key,
    required this.text,
    this.isSender = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment:
            isSender ? MainAxisAlignment.start : MainAxisAlignment.end,
        children: [
          Container(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.6,
            ),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: isSender ? Colors.grey[300] : Colors.greenAccent,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(isSender ? 0 : 12),
                topRight: Radius.circular(isSender ? 12 : 0),
                bottomLeft: const Radius.circular(12),
                bottomRight: const Radius.circular(12),
              ),
            ),
            child: Text(text),
          ),
        ],
      ),
    );
  }
}

class ChatBubbleLarge extends StatelessWidget {
  final String text;
  final bool isSender;
  const ChatBubbleLarge({
    Key? key,
    required this.text,
    this.isSender = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment:
            isSender ? MainAxisAlignment.start : MainAxisAlignment.end,
        children: [
          isSender
              ? const Expanded(
                  flex: 1,
                  child: CircleAvatar(),
                )
              : const SizedBox(),
          Flexible(
            flex: 8,
            child: Container(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.6,
              ),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: isSender ? Colors.grey[300] : Colors.greenAccent,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(isSender ? 0 : 12),
                  topRight: Radius.circular(isSender ? 12 : 0),
                  bottomLeft: const Radius.circular(12),
                  bottomRight: const Radius.circular(12),
                ),
              ),
              child: Text(text),
            ),
          ),
          isSender
              ? const SizedBox()
              : const Expanded(
                  flex: 1,
                  child: CircleAvatar(),
                ),
        ],
      ),
    );
  }
}
