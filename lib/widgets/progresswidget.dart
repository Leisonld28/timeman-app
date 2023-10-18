import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timeman_app/utils.dart';
import 'package:timeman_app/widgets/timerservice.dart';

class ProgressWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerService>(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "${provider.rounds}/4",
              style: textStyle(30, Colors.grey[370], FontWeight.bold),
            ),
            Text(
              "${provider.goal}/12",
              style: textStyle(30, Colors.grey[370], FontWeight.bold),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "RONDA",
              style: textStyle(25, Colors.white, FontWeight.bold),
            ),
            Text(
              "META",
              style: textStyle(25, Colors.white, FontWeight.bold),
            )
          ],
        )
      ],
    );
  }
}
