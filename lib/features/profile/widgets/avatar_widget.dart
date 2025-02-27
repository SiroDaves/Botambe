part of '../profile_screen.dart';

class AvatarWidget extends StatelessWidget {
  final String? imagePath;
  final double radius;
  final VoidCallback onClicked;
  final bool showEdit;

  const AvatarWidget({
    super.key,
    required this.imagePath,
    required this.radius,
    required this.onClicked,
    this.showEdit = false,
  });

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.primary;

    return Center(
      child: Stack(
        children: [
          buildShadowedImage(),
          if (showEdit) ...[
            Positioned(
              bottom: radius * 0.05,
              right: radius * 0.1,
              child: buildEditIcon(color),
            ),
          ],
        ],
      ),
    );
  }

  Widget buildShadowedImage() {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.2),
            blurRadius: radius * 0.15,
            spreadRadius: radius * 0.05,
            offset: Offset(0, radius * 0.1),
          ),
        ],
      ),
      child: buildImage(),
    );
  }

  Widget buildImage() {
    return ClipOval(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onClicked,
          child: CachedNetworkImage(
            imageUrl: imagePath ?? '',
            fit: BoxFit.cover,
            width: radius * 2,
            height: radius * 2,
            placeholder: (context, url) => CircleAvatar(
              radius: radius,
              backgroundColor: Colors.grey,
              child:
                  Icon(Icons.person, size: radius * 0.6, color: Colors.white),
            ),
            errorWidget: (context, url, error) => CircleAvatar(
              radius: radius,
              backgroundImage: const AssetImage(AppAssets.imgSiroDaves),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildEditIcon(Color color) => buildCircle(
        color: Colors.white,
        all: radius * 0.08,
        child: buildCircle(
          color: color,
          all: radius * 0.2,
          child: Icon(
            Icons.edit,
            color: Colors.white,
            size: radius * 0.3,
          ),
        ),
      );

  Widget buildCircle({
    required Widget child,
    required double all,
    required Color color,
  }) =>
      ClipOval(
        child: Container(
          padding: EdgeInsets.all(all),
          color: color,
          child: child,
        ),
      );
}
