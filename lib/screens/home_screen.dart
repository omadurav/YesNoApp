import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/providers/chat_provider.dart';
import 'package:yes_no_app/widgets/Shared/message_field_box.dart';
import 'package:yes_no_app/widgets/my_bubble_message.dart';
import 'package:yes_no_app/widgets/response_bubble_message.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();

    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.only(left: 10),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://orig00.deviantart.net/d634/f/2017/043/a/3/_122__mr_mime_icon_by_crazywackybonkerz-dayuqxj.png'),
          ),
        ),
        title: const Text('Yes No App'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: ListView.builder(
                  controller: chatProvider.chatScrollController,
                  itemCount: chatProvider.messagesList.length,
                  itemBuilder: (context, index) {
                    final message = chatProvider.messagesList[index];

                    return (message.fromWho == FromWho.me)
                        ? MyBubbleMessage(
                            message: message,
                          )
                        : const ResponseBubbleMessage();
                  },
                ),
              ),
              MessageFieldBox(
                  onValue: (value) => chatProvider.sendMessage(value))
            ],
          ),
        ),
      ),
    );
  }
}
