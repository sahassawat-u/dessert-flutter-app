import 'dart:async';
import 'package:dessert_app/widgets/media_button.dart';
import 'package:flutter/material.dart';

class TimerPage extends StatefulWidget {
  final int prepTime;
  final int cookTime;
  final Color color;
  const TimerPage(
      {Key? key,
      required this.prepTime,
      required this.cookTime,
      required this.color})
      : super(key: key);

  @override
  State<TimerPage> createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage> {
  Timer? timer;
  late int time;
  int seconds = 60;
  bool isTimerUsed = false;
  bool isPrep = true;
  @override
  void initState() {
    super.initState();
    time = widget.prepTime * seconds;
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  void setState(callback) {
    if (mounted) {
      super.setState(callback);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.only(top: 70, left: 30, right: 40),
          child: Column(
            children: [
              Container(
                child: Row(children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios),
                    color: Colors.grey.shade400,
                  ),
                  Container(
                    width: 280,
                    child: Text(
                      'Timer',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 22,
                      ),
                    ),
                  )
                ]),
              ),
              Container(
                padding: EdgeInsets.all(30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: isPrep ? BorderSide(color: widget.color) : null,
                      ),
                      onPressed: () {
                        setState(() => {
                              // isTimerUsed = !isTimerUsed,
                              if (!isPrep)
                                {
                                  isPrep = true,
                                  time = widget.prepTime * seconds,
                                }
                            });
                      },
                      child: Text(
                        "Prep Time",
                        style: TextStyle(
                          color: isPrep ? widget.color : Colors.grey.shade500,
                        ),
                      ),
                    ),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: !isPrep ? BorderSide(color: widget.color) : null,
                      ),
                      onPressed: () {
                        setState(() => {
                              if (isPrep)
                                {
                                  isPrep = false,
                                  time = widget.cookTime * seconds,
                                }
                            });
                      },
                      child: Text(
                        "Cooking Time",
                        style: TextStyle(
                          color: !isPrep ? widget.color : Colors.grey.shade500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                isPrep ? "Prep Time" : "Cooking Time",
                style: TextStyle(color: widget.color, fontSize: 18),
              ),
              Container(
                  margin: EdgeInsets.symmetric(vertical: 100),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [timerWidget()],
                  )),
              Container(
                child: timerButton(),
              ),
            ],
          )),
    );
  }

  Widget timerButton() {
    final isActive = timer == null ? false : timer!.isActive;
    final isCompleted =
        time == (isPrep ? widget.prepTime : widget.cookTime) * seconds ||
            time == 0;
    return isActive || !isCompleted
        ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MediaButton(
                onPressed_: () {
                  if (isActive) {
                    stopTimer();
                  } else {
                    startTimer();
                  }
                },
                color: widget.color,
                icon: isActive ? Icons.pause : Icons.play_arrow,
              ),
              SizedBox(
                width: 60,
              ),
              MediaButton(
                onPressed_: () {
                  stopTimer(reset: true);
                },
                color: widget.color,
                icon: Icons.refresh,
              )
            ],
          )
        : MediaButton(
            onPressed_: () {
              startTimer(reset: true);
            },
            color: widget.color,
            icon: Icons.play_arrow,
          );
  }

  showTimeOutDialog(BuildContext context) => showDialog(
      context: context,
      builder: (ctx) => Dialog(
            elevation: 0,
            backgroundColor: Colors.transparent,
            child: Container(
              padding: EdgeInsets.all(8),
              height: 150,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Text(
                      (isPrep ? "Prep Time" : "Cooking Time") +
                          ' has finished!',
                      style: TextStyle(
                          fontSize: 20, color: Colors.redAccent.shade200),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  OutlinedButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text(
                        "close",
                        style: TextStyle(color: Colors.redAccent.shade200),
                      ))
                ],
              ),
            ),
          ));
  void resetTimer() => setState(
      () => time = (isPrep ? widget.prepTime : widget.cookTime) * seconds);
  void startTimer({bool reset = false}) {
    if (reset) {
      resetTimer();
    }
    timer = Timer.periodic(Duration(seconds: 1), (_) {
      if (time > 0) {
        setState(() => time--);
      } else {
        showTimeOutDialog(context);
        stopTimer(reset: false);
      }
    });
  }

  void stopTimer({bool reset = false}) {
    if (reset) {
      resetTimer();
    }
    setState(() => timer?.cancel());
  }

  String formattedTime(int secTime) {
    String getParsedTime(String time) {
      if (time.length <= 1) return "0$time";
      return time;
    }

    int min = secTime ~/ 60;
    int sec = secTime % 60;
    String parsedTime =
        getParsedTime(min.toString()) + ":" + getParsedTime(sec.toString());
    return parsedTime;
  }

  Widget timerWidget() {
    final String showTime = formattedTime(time);
    final totalTime = (isPrep ? widget.prepTime : widget.cookTime) * 60;
    return SizedBox(
      width: 230,
      height: 230,
      child: Stack(fit: StackFit.expand, children: [
        CircularProgressIndicator(
          value: 1 - (time / totalTime),
          valueColor: AlwaysStoppedAnimation(Colors.grey.shade200),
          strokeWidth: 8,
          backgroundColor: widget.color,
        ),
        Center(
          child: Text(
            '$showTime',
            style: TextStyle(
              // fontWeight: FontWeight.bold,
              color: widget.color,
              fontSize: 60,
            ),
          ),
        ),
      ]),
    );
  }
}
