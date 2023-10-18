import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timeman_app/widgets/progresswidget.dart';
import 'package:timeman_app/widgets/timecard.dart';
import 'package:timeman_app/widgets/timecontroller.dart';
import 'package:timeman_app/widgets/timeoptions.dart';
import 'package:timeman_app/widgets/timerservice.dart';
import 'utils.dart';

class PomodoroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerService>(context);
    return Scaffold(
      backgroundColor: renderColor(provider.currentState),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: renderColor(provider.currentState),
        title: Text(
          "TIME MAN",
          style: textStyle(25, Colors.white, FontWeight.w700),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.refresh,
              color: Colors.white,
            ),
            iconSize: 40,
            onPressed: () =>
                Provider.of<TimerService>(context, listen: false).reset(),
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
                height: 30,
              ),
              TimeController(),
              SizedBox(
                height: 30,
              ),
              ProgressWidget()
            ],
          ),
        ),
      ),
    );
  }
}
