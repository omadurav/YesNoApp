import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ResponseBubbleMessage extends StatelessWidget {
  final Message message;
  const ResponseBubbleMessage({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          alignment: Alignment.centerLeft,
          width: size.width * 0.7,
          height: 42,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(100),
          ),
          child: Text(
            message.text,
            style: const TextStyle(fontSize: 18),
          ),
        ),
        const SizedBox(height: 10),
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.network(
            message.urlImage!,
            width: size.width * 0.7,
            height: 160,
            fit: BoxFit.cover,
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) return child;

              return Container(
                width: size.width * 0.7,
                height: 160,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: const Text(
                  'Mr Mime esta escribiendo...',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
