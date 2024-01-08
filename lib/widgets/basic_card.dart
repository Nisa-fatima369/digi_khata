import 'package:digi_khata/theme/colors.dart';
import 'package:flutter/material.dart';


class BasicCard extends StatelessWidget {
  final Widget? child;
  final Function()? onTap;
  final IconData? icon;
  final String? title;
  const BasicCard({
    Key? key,
    this.child,
    this.onTap,  this.icon,   this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        decoration: BoxDecoration(
          color: AppColors.background,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: AppColors.border.withOpacity(0.8),
              spreadRadius: 1,
              blurRadius: 5,
            ),
          ],
        ),
        child: child,
      ),
    );
  }
}
