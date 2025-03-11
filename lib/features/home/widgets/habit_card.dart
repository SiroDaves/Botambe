part of '../home_screen.dart';

class DateSelectors extends StatelessWidget {
  const DateSelectors({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 7,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: index == 0 ? Colors.black : Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    "${16 + index}",
                    style: TextStyle(
                      color: index == 0 ? Colors.white : Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class HabitCard extends StatelessWidget {
  final String title;
  final double doneHours;
  final double targetHours;
  final Color color;
  final double width;

  const HabitCard({
    super.key,
    required this.title,
    required this.doneHours,
    required this.targetHours,
    required this.color,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    double progress = (doneHours / targetHours).clamp(0.0, 1.0);

    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          [
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: width / 5,
                fontWeight: FontWeight.bold,
              ),
            ).expanded(),
            Icon(Icons.check, color: Colors.white, size: width / 4),
          ].toRow(),
          SizedBox(height: 20),
          CircularPercentIndicator(
            radius: width / 1.5,
            lineWidth: 10,
            percent: progress,
            backgroundColor: Colors.white.withValues(alpha: .3),
            progressColor: Colors.white,
            circularStrokeCap: CircularStrokeCap.round,
            center: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  doneHours.toStringAsFixed(0),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: width / 2,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "hrs",
                  style: TextStyle(
                    color: Colors.white.withValues(alpha: 0.8),
                    fontSize: width / 4,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
