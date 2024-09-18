import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();

    final focusNode = FocusNode();

    return TextFormField(
      controller: textController,
      focusNode: focusNode,
      onTapOutside: (event) {
        //Perder el foco cuando se hace o se presionar por fuera del input
        focusNode.unfocus();
      },
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        hintText: 'El mensaje debe finalizar con "?"',
        filled: true,
        suffixIcon: IconButton(
          icon: const Icon(Icons.send_rounded),
          onPressed: () {
            final textValue = textController.value.text;
            textController.clear();
          },
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(20),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      onFieldSubmitted: (value) {
        textController.clear();
        //No perder el foco despues de enviar el mensaje
        focusNode.requestFocus();
      },
    );
  }
}
