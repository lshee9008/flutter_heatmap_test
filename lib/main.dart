import 'package:flutter/material.dart';
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HeatMapScreen(),
    );
  }
}

class HeatMapScreen extends StatefulWidget {
  @override
  _HeatMapScreenState createState() => _HeatMapScreenState();
}

class _HeatMapScreenState extends State<HeatMapScreen> {
  final Map<DateTime, int> activityData = {
    DateTime(2023, 11, 1): 1,
    DateTime(2023, 11, 2): 3,
    DateTime(2023, 11, 3): 5,
    DateTime(2023, 11, 4): 2,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GitHub 스타일 히트맵'),
      ),
      body: Center(
        child: HeatMap(
          datasets: activityData,
          colorMode: ColorMode.opacity,
          defaultColor: Colors.grey[200]!,
          colorsets: {
            1: Colors.green[100]!,
            3: Colors.green[300]!,
            5: Colors.green[500]!,
          },
          showText: false,
          textColor: Colors.black,
        ),
      ),
    );
  }
}
