import 'package:flutter/material.dart';

class SearchProjectComponent extends StatelessWidget {
  const SearchProjectComponent({
    super.key,
    required this.iconData,
    required this.onPressed,
    this.borderRadius = 15,
    this.withOpacity = 0.1,
    this.iconSize = 28,
    this.color,
    this.iconColor = Colors.white,
  });
  final double borderRadius;
  final double withOpacity;
  final Color? color;
  final Color iconColor;
  final IconData iconData;
  final double iconSize;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: null,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: color ?? Colors.black.withOpacity(withOpacity),
      ),
      child: IconButton(
        icon: Icon(
          iconData,
          size: iconSize,
          color: iconColor,
        ),
        onPressed: onPressed,
      ),
    );
  }
}
