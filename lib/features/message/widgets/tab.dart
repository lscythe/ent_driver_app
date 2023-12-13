import 'package:badges/badges.dart' as badges;
import 'package:driver/extensions/extensions.dart';
import 'package:flutter/material.dart';

class KTab extends StatelessWidget {
  const KTab({
    super.key,
    required this.label,
    required this.messageTotal,
    required this.isSelected,
  });

  final String label;
  final int messageTotal;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: !isSelected && !messageTotal.isZero
          ? badges.Badge(badgeAnimation: const badges.BadgeAnimation.fade(),
              position: badges.BadgePosition.topEnd(top: -12),
              badgeStyle: badges.BadgeStyle(
                badgeColor: context.colorScheme.error,
              ),
              badgeContent: Text(
                "$messageTotal",
                style: context.textTheme.labelSmall?.copyWith(
                  color: context.colorScheme.onError,
                ),
                maxLines: 1,
              ),
              child: Text(
                label,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            )
          : Tab(
              child: Text(
                label,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
    );
  }
}
