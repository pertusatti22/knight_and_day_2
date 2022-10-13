import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class SimpleBarChart extends StatelessWidget {
  final List<charts.Series<dynamic, String>> seriesList;
  final bool animate;

  const SimpleBarChart(this.seriesList, {Key? key, required this.animate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const lineStyleSpec =
        charts.LineStyleSpec(color: charts.MaterialPalette.white);
    const renderSpec =
        charts.SmallTickRendererSpec<String>(axisLineStyle: lineStyleSpec);
    const axisSpec = charts.AxisSpec<String>(renderSpec: renderSpec);

    return charts.BarChart(
      seriesList,
      animate: animate,
      domainAxis: axisSpec,
    );
  }
}
