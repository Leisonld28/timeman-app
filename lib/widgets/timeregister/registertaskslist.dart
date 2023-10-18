import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterTaskList extends StatelessWidget {
  const RegisterTaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      backgroundColor: Colors.redAccent,
      navigationBar: CupertinoNavigationBar(
        middle: Text('Tareas'),
        backgroundColor: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [],
      ),
    );
  }
}
