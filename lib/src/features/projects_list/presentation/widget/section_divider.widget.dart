import 'package:flutter/material.dart';

import '../../../../common/common.dart';

class SectionDividerWidget extends StatelessWidget {
  const SectionDividerWidget({
    super.key,
    required this.title,
    this.label,
    this.buttonLabel,
    this.textStyle,
    this.padding = 25.0,
  });
  final String title;
  final String? label;
  final String? buttonLabel;
  final TextStyle? textStyle;
  final double padding;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
            text: TextSpan(
              text: title,
              style: textStyle ??
                  const TextStyle(
                    color: Pallete.blackColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
              children: [
                TextSpan(
                    text: label ?? '',
                    style: const TextStyle(
                      color: Pallete.blackColor,
                      fontWeight: FontWeight.w300,
                      fontSize: 16,
                    ))
              ],
            ),
          ),
          Visibility(
            visible: buttonLabel != null,
            child: Text(
              buttonLabel ?? '',
              style: textTheme.labelLarge?.copyWith(
                color: Pallete.blueColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
