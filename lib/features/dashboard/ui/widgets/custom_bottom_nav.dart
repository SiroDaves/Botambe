part of '../dashboard_screen.dart';

class CustomBottomNavBar extends StatelessWidget {
  final Function(int) onItemSelected;
  final int selectedIndex;

  const CustomBottomNavBar({
    super.key,
    required this.onItemSelected,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.2),
            blurRadius: 10,
            spreadRadius: 1,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BottomAppBar(
          shape: CustomNotchedShape(),
          color: Colors.black,
          notchMargin: 20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNavItem(Icons.home_outlined, 0),
              _buildNavItem(Icons.bar_chart_outlined, 1),
              const SizedBox(width: 40), // Space for FAB
              _buildNavItem(Icons.pie_chart_outline, 2),
              _buildNavItem(Icons.person_outline, 3),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(IconData icon, int index) {
    return IconButton(
      icon: Icon(icon,
          color: selectedIndex == index ? Colors.white : Colors.grey),
      onPressed: () => onItemSelected(index),
    );
  }
}

class CustomNotchedShape extends CircularNotchedRectangle {
  @override
  Path getOuterPath(Rect host, Rect? guest) {
    if (guest == null) return Path()..addRect(host);

    double notchRadius = guest.width * 0.5;
    double notchCenterX = guest.center.dx;
    // ignore: unused_local_variable
    double notchBottomY = guest.top;
    double notchTopY = guest.top - notchRadius * 1.5; // Raise the notch

    return Path()
      ..moveTo(host.left, host.top)
      ..lineTo(notchCenterX - notchRadius, host.top)
      ..quadraticBezierTo(
        notchCenterX, notchTopY,
        notchCenterX + notchRadius, host.top,
      )
      ..lineTo(host.right, host.top)
      ..lineTo(host.right, host.bottom)
      ..lineTo(host.left, host.bottom)
      ..close();
  }
}
