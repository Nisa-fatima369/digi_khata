import 'package:digi_khata/constants.dart';
import 'package:digi_khata/theme/colors.dart';
import 'package:flutter/material.dart';

class BasicButton extends StatefulWidget {
  final Function()? onTap;
  final String? text;
  final Color? color;
  final IconData? icon;

  const BasicButton({
    Key? key,
    this.onTap,
    this.color,
    this.icon,
     this.text,
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
          color: widget.color ?? AppColors.primary,
          borderRadius: BorderRadius.circular(30),
        ),
        child: widget.icon == null
            ? Center(
                child: Text(
                  widget.text!,
                  style: const TextStyle(color: AppColors.background),
                ),
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    widget.icon,
                    color: AppColors.background,
                  ),
                  x5,
                  Text(
                    widget.text!,
                    style: const TextStyle(color: AppColors.background),
                  ),
                ],
              ),
      ),
    );
  }
}
