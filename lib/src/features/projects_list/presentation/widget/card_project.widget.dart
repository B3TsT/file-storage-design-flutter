import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../common/common.dart';
import '../../../../core/router/global_key_route.dart';

class CardProjectWidget extends StatelessWidget {
  const CardProjectWidget({
    super.key,
    required this.label,
    required this.onPressed,
  });
  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return GestureDetector(
      onTap: () => context.go('${AppRoutes.projectList}/details/hola'),
      child: Container(
        height: 65,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        margin: const EdgeInsets.only(bottom: 8),
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.folder,
                  color: Colors.blue[200],
                ),
                const SizedBox(width: 12),
                Text(label, style: textTheme.bodyLarge),
              ],
            ),
            IconButton(
              onPressed: onPressed,
              icon: const Icon(
                Icons.more_vert_rounded,
                color: Colors.grey,
              ),
            )
          ],
        ),
      ),
    );
  }
}
