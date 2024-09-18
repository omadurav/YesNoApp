import 'package:flutter/material.dart';

class ResponseBubbleMessage extends StatelessWidget {
  const ResponseBubbleMessage({super.key});

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
          child: const Text(
            'Respuesta del mensaje',
            style: TextStyle(fontSize: 18),
          ),
        ),
        const SizedBox(height: 10),
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.network(
            'https://yesno.wtf/assets/no/20-56c4b19517aa69c8f7081939198341a4.gif',
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
