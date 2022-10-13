import 'package:flutter/material.dart';
import 'package:knight_and_day_2/home/bar_chart.dart';

import '../custom_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _joustCounter = 0;
  int _breakCounter = 0;
  int _patrolCounter = 0;

  @override
  Widget build(BuildContext context) {
    final totalActivities = _joustCounter + _breakCounter + _patrolCounter;
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Knight and Day',
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BarChart(
            joustCounter: _joustCounter,
            breakCounter: _breakCounter,
            patrolCounter: _patrolCounter,
          ),
          const SizedBox(
            height: 32.0,
          ),
          Text("You've done $totalActivities activities in total"),
          const SizedBox(
            height: 32.0,
          ),
          ElevatedButton(
            child: const Text("Joust"),
            onPressed: () => setState(() {
              _joustCounter++;
            }),
          ),
          ElevatedButton(
            child: const Text("Take break"),
            onPressed: () => setState(() {
              _breakCounter++;
            }),
          ),
          ElevatedButton(
            child: const Text("Patrol"),
            onPressed: () => setState(() {
              _patrolCounter++;
            }),
          ),
        ],
      ),
    );
  }
}
