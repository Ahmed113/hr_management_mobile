import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({
    super.key,
    this.backgroundImage,
    required this.title,
    required this.subtitle,
    this.iconData,
    required this.maxRaduis,
  });

  final ImageProvider<Object>? backgroundImage;

  // final String title;
  final double maxRaduis;
  final IconData? iconData;
  final Widget title;
  final Widget subtitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        maxRadius: maxRaduis,
        backgroundImage: backgroundImage,
      ),
      title: title,
      subtitle: subtitle,
      trailing: Icon(iconData),
    );
  }
}
