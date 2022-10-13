import 'package:charts_flutter/flutter.dart';
import 'package:flutter/material.dart';
import 'package:knight_and_day_2/home/simple_bar_chart.dart';

import '../theme/colors.dart';

class BarChart extends StatelessWidget {
  final int joustCounter;
  final int breakCounter;
  final int patrolCounter;

  const BarChart(
      {Key? key,
      required this.joustCounter,
      required this.breakCounter,
      required this.patrolCounter})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const chartColor = CustomColors.deepPurple;
    return SizedBox(
      height: 200,
      child: SimpleBarChart(
        <Series<ChartData, String>>[
          Series<ChartData, String>(
            id: 'Graph',
            colorFn: (_, __) => Color(
                a: 255,
                r: chartColor.red,
                g: chartColor.green,
                b: chartColor.blue),
            domainFn: (ChartData activity, _) => activity.title,
            measureFn: (ChartData activity, _) => activity.value,
            data: [
              ChartData(title: "Jousts", value: joustCounter),
              ChartData(title: "Breaks", value: breakCounter),
              ChartData(title: "Patrols", value: patrolCounter),
            ],
          )
        ],
        animate: true,
      ),
    );
  }
}

class ChartData {
  final String title;
  final int value;

  ChartData({required this.title, required this.value});
}
