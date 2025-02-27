import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

import '../dashboard/ui/dashboard_screen.dart';

class StatisticsScreen extends StatelessWidget {
  final DashboardScreenState parent;
  final int steps = 7235;
  final int goal = 10000;
  final int calories = 870;

  const StatisticsScreen({super.key, required this.parent});

  @override
  Widget build(BuildContext context) {
    double progress = steps / goal;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text('Statistics')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "You have walked $steps steps today",
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  height: 180,
                  width: 180,
                  child: CircularProgressIndicator(
                    value: progress,
                    strokeWidth: 12,
                    backgroundColor: Colors.grey[300],
                    valueColor: const AlwaysStoppedAnimation(Colors.green),
                  ),
                ),
                Column(
                  children: [
                    Icon(Icons.directions_walk, size: 40, color: Colors.green),
                    Text("$steps", style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                    const Text("Steps", style: TextStyle(color: Colors.grey)),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Calories & Goal Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text("$calories Cal", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    const Text("Cal Burned", style: TextStyle(color: Colors.grey)),
                  ],
                ),
                Column(
                  children: [
                    Text("$goal Step", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    const Text("Daily Goal", style: TextStyle(color: Colors.grey)),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 30),

            // Statistics Chart
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Statistics", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  Expanded(child: _buildChart()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildChart() {
    return BarChart(
      BarChartData(
        barGroups: [
          for (int i = 0; i < 12; i++)
            BarChartGroupData(
              x: i,
              barRods: [BarChartRodData(toY: (i % 3 + 1) * 1000.toDouble(), color: Colors.orange)],
            ),
        ],
        titlesData: FlTitlesData(
          leftTitles: AxisTitles(),
          rightTitles: AxisTitles(),
          topTitles: AxisTitles(),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, _) => Text(
                value % 3 == 0 ? "${(value * 2) % 24}h" : "",
                style: const TextStyle(fontSize: 10),
              ),
            ),
          ),
        ),
        borderData: FlBorderData(show: false),
        gridData: FlGridData(show: false),
      ),
    );
  }
}
