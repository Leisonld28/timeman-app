import 'dart:async';

import 'package:flutter/material.dart';

class TimerService extends ChangeNotifier {
  late Timer timer;
  double currentDuration = 1500;
  double selectedTime = 1500;
  bool timerPlaying = false;
  int rounds = 0;
  int goal = 0;
  String currentState = "CONCENTRACION";

  void start() {
    timerPlaying = true;
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (currentDuration == 0) {
        handleNextRound();
      } else {
        currentDuration--;
        notifyListeners();
      }
    });
  }

  void pause() {
    timer.cancel();
    timerPlaying = false;
    notifyListeners();
  }

  void selectTime(double seconds) {
    selectedTime = seconds;
    currentDuration = seconds;
    notifyListeners();
  }

  void reset() {
    timer.cancel();
    currentState = "CONCENTRACION";
    currentDuration = selectedTime = 1500;
    rounds = goal = 0;
    timerPlaying = false;
    notifyListeners();
  }

  void handleNextRound() {
    if (currentState == "CONCENTRACION" && rounds != 3) {
      currentState = "DESCANSO";
      currentDuration = 300;
      selectedTime = 300;
      rounds++;
      goal++;
    } else if (currentState == "DESCANSO") {
      currentState = "CONCENTRACION";
      currentDuration = 1500;
      selectedTime = 1500;
    } else if (currentState == "CONCENTRACION" && rounds == 3) {
      currentState = "LONGDESCANSO";
      currentDuration = 1500;
      selectedTime = 1500;
      rounds++;
      goal++;
    } else if (currentState == "LONGDESCANSO") {
      currentState = "CONCENTRACION";
      currentDuration = 1500;
      selectedTime = 1500;
      rounds = 0;
    }
    notifyListeners();
  }
}
