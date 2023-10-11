import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timeman_app/pomodoroscreen.dart';
import 'package:timeman_app/widgets/timerservice.dart';

void main() {
  runApp(ChangeNotifierProvider<TimerService>(
    create: (_) => TimerService(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: PomodoroScreen());
  }
}
