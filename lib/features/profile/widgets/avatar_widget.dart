import 'package:botambe/common/utils/constants/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class AvatarWidget extends StatelessWidget {
  final String? imagePath;
  final VoidCallback onClicked;

  const AvatarWidget({
    super.key,
    required this.imagePath,
    required this.onClicked,
  });

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.primary;

    return Center(
      child: Stack(
        children: [
          buildShadowedImage(),
          Positioned(
            bottom: 0,
            right: 4,
            child: buildEditIcon(color),
          ),
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
            blurRadius: 8,
            spreadRadius: 2,
            offset: const Offset(0, 4),
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
            width: 128,
            height: 128,
            placeholder: (context, url) => const CircleAvatar(
              radius: 64,
              backgroundColor: Colors.grey,
              child: Icon(Icons.person, size: 40, color: Colors.white),
            ),
            errorWidget: (context, url, error) => const CircleAvatar(
              radius: 64,
              backgroundImage: AssetImage(AppAssets.imgSiroDaves),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildEditIcon(Color color) => buildCircle(
        color: Colors.white,
        all: 3,
        child: buildCircle(
          color: color,
          all: 8,
          child: const Icon(
            Icons.edit,
            color: Colors.white,
            size: 20,
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
