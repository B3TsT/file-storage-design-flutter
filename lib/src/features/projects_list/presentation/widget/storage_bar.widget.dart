import 'package:flutter/material.dart';

import '../../../../common/common.dart';

class BuildFileSizeChart extends StatelessWidget {
  const BuildFileSizeChart({
    super.key,
    required this.space,
    this.title = "",
    this.color = Pallete.blueColor,
  });
  final String title;
  final double space;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width - 50;
    final textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: width * space,
          height: 4,
          color: color,
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: textTheme.titleLarge?.copyWith(
            fontSize: 10,
          ),
        ),
      ],
    );
  }
}
