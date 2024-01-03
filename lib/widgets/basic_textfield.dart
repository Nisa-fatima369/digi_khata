import 'package:digi_khata/theme/colors.dart';
import 'package:flutter/material.dart';

class BasicTextField extends StatelessWidget {
  final String hinttext;
  final TextEditingController controller;
  final IconData? icon;
  final Function()? onTap;
  const BasicTextField({
    super.key,
    this.onTap,
    required this.hinttext,
    required this.controller,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.primaryText,
      decoration: InputDecoration(
        hintText: hinttext,
        hintStyle: Theme.of(context).textTheme.bodyMedium,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: AppColors.border,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: AppColors.border,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: AppColors.border,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: AppColors.failure,
          ),
        ),
        filled: true,
        fillColor: AppColors.background.withOpacity(0.2),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        focusColor: AppColors.background.withOpacity(0.2),
        hoverColor: AppColors.background.withOpacity(0.2),
        suffixIcon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: AppColors.border.withOpacity(0.4),
            child: Icon(
              icon,
              color: AppColors.primary,
            ),
          ),
        ),
      ),
    );
  }
}
