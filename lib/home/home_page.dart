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
        title: 'Knight and Day 2',
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
          Text(
            "You've done $totalActivities activities in total",
            style: Theme.of(context).textTheme.headline2,
          ),
          const SizedBox(
            height: 32.0,
          ),
          ElevatedButton(
            onPressed: () => setState(() {
              _joustCounter++;
            }),
            child: const Text("Joust"),
          ),
          ElevatedButton(
            onPressed: () => setState(() {
              _breakCounter++;
            }),
            child: const Text("Take break"),
          ),
          ElevatedButton(
            onPressed: () => setState(() {
              _patrolCounter++;
            }),
            child: const Text("Patrol"),
          ),
        ],
      ),
    );
  }
}
