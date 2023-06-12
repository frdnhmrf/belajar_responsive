import 'package:belajar_responsive/widgets/chat_bubble.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat Page'),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) => LayoutBuilder(
          builder: (context, constraints) {
            double breakpoint = orientation == Orientation.portrait ? 400 : 600;
            if (constraints.maxWidth < breakpoint) {
              return ListView(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                children: [
                  const ChatBubbleSmall(text: 'Hii, Salam kenal'),
                  const ChatBubbleSmall(
                    text: 'Hii, Salam kenal juga',
                    isSender: true,
                  ),
                  const ChatBubbleSmall(
                    text:
                        'Hii, aksbdkasb dkajsbdkbas djkasbkdb dkabdskbas hasbjdbja jhasbd',
                    isSender: true,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 20,
                    color: Colors.amberAccent,
                  )
                ],
              );
            } else {
              return ListView(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                children: [
                  const ChatBubbleLarge(text: 'Hii, Salam kenal'),
                  const ChatBubbleLarge(
                    text: 'Hii, Salam kenal juga',
                    isSender: true,
                  ),
                  const ChatBubbleLarge(
                    text:
                        'Hii, aksbdkasb dkajsbdkbas djkasbkdb dkabdskbas hasbjdbja jhasbd',
                    isSender: true,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 20,
                    color: Colors.amberAccent,
                  )
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
