import 'package:flutter/material.dart';
import 'package:timeman_app/utils.dart';

class ProgressWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "0/4",
              style: textStyle(30, Colors.grey[370], FontWeight.bold),
            ),
            Text(
              "0/12",
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
