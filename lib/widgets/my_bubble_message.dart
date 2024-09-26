import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class MyBubbleMessage extends StatelessWidget {
  final Message message;

  const MyBubbleMessage({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    final Size sizeScreen = MediaQuery.of(context).size;

    final Color color = Theme.of(context).colorScheme.primary;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          width: sizeScreen.width * 0.5,
          height: 42,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: color,
          ),
          child: Text(
            message.text,
            style: const TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
