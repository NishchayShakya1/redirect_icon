import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class RedirectSocialIcon extends StatelessWidget {
  const RedirectSocialIcon({
    Key? key,
    required this.url,
    required this.icon,
    required this.radius,
    required this.size,
    required this.iconColor,
    required this.circleAvatarColor,
  }) : super(key: key);

  final String url;
  final IconData icon;
  final double radius;
  final double size;
  final Color iconColor;
  final Color circleAvatarColor;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      child: Material(
        shape: const CircleBorder(),
        clipBehavior: Clip.hardEdge,
        color: circleAvatarColor,
        child: InkWell(
          onTap: () async {
            // ignore: deprecated_member_use
            if (await canLaunch(url)) {
              // ignore: deprecated_member_use
              await launch(url);
            } else {
              throw "Could not launch $url";
            }
          },
          child: Center(child: Icon(icon, size: size, color: iconColor,)),
        ),
      ),
    );
  }
}
