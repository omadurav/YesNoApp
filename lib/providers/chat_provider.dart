import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messagesList = [
    Message(text: 'Hola', fromWho: FromWho.me),
    Message(text: 'Ya esta en el trabajo?', fromWho: FromWho.me)
  ];

  Future<void> sendMessage(String text) async {}
}
