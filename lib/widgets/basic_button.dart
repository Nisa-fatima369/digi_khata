

import 'package:digi_khata/theme/colors.dart';
import 'package:flutter/material.dart';

class BasicButton extends StatefulWidget {
  final Function()? onTap;
  final String text;

  const BasicButton({
    Key? key,
    this.onTap,
    required this.text,
  }) : super(key: key);

  @override
  State<BasicButton> createState() => _BasicButtonState();
}

class _BasicButtonState extends State<BasicButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        height: 40,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: Text(
            widget.text,
            style: const TextStyle(color: AppColors.background),
          ),
        ),
      ),
    );
  }
}