import 'package:flutter/material.dart';

import '../../../../common/common.dart';

class BuildFileColumnWidget extends StatelessWidget {
  const BuildFileColumnWidget({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  final String image;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final width = MediaQuery.of(context).size.width - 50;
    return Column(
      children: [
        Container(
          width: width * .31,
          padding: const EdgeInsets.all(38),
          height: 110,
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(20)),
          child: Image.asset(image),
        ),
        const SizedBox(height: 15),
        RichText(
          text: TextSpan(
            text: title,
            style: textTheme.bodyMedium,
            children: [
              TextSpan(
                text: description,
                style: textTheme.bodySmall?.copyWith(
                  color: Pallete.greyColor,
                  fontWeight: FontWeight.w300,
                  fontSize: 12,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
