import 'package:digi_khata/theme/colors.dart';
import'package:flutter/material.dart';

final kSimpleTextField = InputDecoration(
        hintText: '',
        hintStyle: TextStyle(
      color: AppColors.primaryText,
      fontWeight: FontWeight.w500,
      fontSize: 16,
    ),
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
        
      );

//Search TextField
final kSearchTextField = InputDecoration(
  helperStyle: const TextStyle(
    color: AppColors.primaryText,
  ),
  floatingLabelStyle: const TextStyle(
    color: AppColors.primaryText,
  ),
  labelStyle: const TextStyle(
    color: AppColors.primaryText,
  ),
  hintStyle: const TextStyle(
    color: AppColors.placeholderText,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(30),
    borderSide: const BorderSide(
      color: AppColors.border,
    ),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(30),
    borderSide: const BorderSide(
      color: AppColors.border,
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(30),
    borderSide: const BorderSide(
      color: AppColors.border,
    ),
  ),
  hoverColor: AppColors.background,
  focusColor: AppColors.background,
  fillColor: AppColors.background,
  filled: true,
);

const y5 = SizedBox(height: 5);
const y10 = SizedBox(height: 10);
const y15 = SizedBox(height: 15);
const y20 = SizedBox(height: 20);
const y30 = SizedBox(height: 30);
const y40 = SizedBox(height: 40);
const y80 = SizedBox(height: 80);
const y100 = SizedBox(height: 100);
const y150 = SizedBox(height: 150);
const y200 = SizedBox(height: 200);
const y300 = SizedBox(height: 300);


const x5 = SizedBox(width: 5);
const x10 = SizedBox(width: 10);
const x15 = SizedBox(width: 15);
const x20 = SizedBox(width: 20);