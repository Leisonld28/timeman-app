import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timeman_app/widgets/timeregister/registerform.dart';
import 'package:timeman_app/widgets/timeregister/registertaskslist.dart';

class TimeRegisters extends StatelessWidget {
  const TimeRegisters({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) => const RegisterForm()),
                );
              },
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.grey,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 2.0, color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text("Guardar"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) => const RegisterTaskList()),
                );
              },
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.grey,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 2.0, color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text("Registros"),
            ),
          ],
        )
      ],
    );
  }
}
