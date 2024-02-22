import 'package:flutter/material.dart';

import '../../../../common/common.dart';

class CustomAppBarLayout extends StatelessWidget {
  const CustomAppBarLayout({
    super.key,
    required this.title,
    required this.subTitle,
  });
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
      alignment: Alignment.bottomCenter,
      height: 170,
      decoration: BoxDecoration(color: Colors.blue.shade800),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  style: textTheme.headlineMedium?.copyWith(
                    fontSize: 26,
                    color: Pallete.whiteColor,
                  )),
              Text(
                subTitle,
                style: textTheme.titleSmall!.copyWith(
                  fontSize: 17,
                  color: Pallete.whiteColor,
                ),
              ),
            ],
          ),
          Row(
            children: [
              SearchProjectComponent(
                iconData: Icons.search,
                onPressed: () {},
              ),
              const SizedBox(width: 10),
              NotificationProjectComponent(
                iconData: Icons.notifications_outlined,
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );
  }
}
