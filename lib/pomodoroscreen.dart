import 'package:flutter/material.dart';
import 'package:timeman_app/widgets/timecard.dart';
import 'package:timeman_app/widgets/timecontroller.dart';
import 'package:timeman_app/widgets/timeoptions.dart';
import 'utils.dart';

class PomodoroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.redAccent,
        title: Text(
          "POMOTIMER",
          style: textStyle(25, Colors.white, FontWeight.w700),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.refresh,
              color: Colors.white,
            ),
            iconSize: 40,
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              SizedBox(height: 15),
              TimerCard(),
              SizedBox(height: 40),
              TimeOptions(),
              SizedBox(
                height: 40,
              ),
              TimeController()
            ],
          ),
        ),
      ),
    );
  }
}
