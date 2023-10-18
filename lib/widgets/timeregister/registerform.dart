import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _TextFieldTimeRegister();
}

class _TextFieldTimeRegister extends State<RegisterForm> {
  late TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController(text: 'tarea_1');
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.redAccent,
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Guardar Tarea'),
        backgroundColor: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CupertinoTextField(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
            padding: const EdgeInsets.all(15),
            placeholder: "tarea-1",
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),
          CupertinoButton.filled(
            onPressed: () {
              print("Guardamos la tarea");
            },
            child: const Text("OK"),
          ),
        ],
      ),
    );
  }
}
