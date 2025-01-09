import 'package:e_coomer/core/utiles/app_color.dart';
import 'package:flutter/material.dart';

class CustomDropDownFormField extends StatelessWidget {
  const CustomDropDownFormField(
      {super.key,
      required this.items,
      required this.onChanged,
      this.value,
      this.icon,
      this.hintText,
      this.validator,
      this.color});

  final List<DropdownMenuItem>? items;
  final void Function(dynamic)? onChanged;
  final dynamic value;
  final Widget? icon;
  final String? hintText;
  final String? Function(dynamic)? validator;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      padding: EdgeInsets.zero,
      items: items,
      style: const TextStyle(
        fontSize: 14.0,
        color: Color(0xff020202),
        fontWeight: FontWeight.w500,
      ),
      onChanged: onChanged,
      value: value,
      icon: icon,
      dropdownColor: color ?? Colors.white,
      decoration: InputDecoration(
        hintText: hintText,
        filled: true,
        fillColor: color ?? Colors.white,
        hintStyle: const TextStyle(
          fontSize: 16.0,
          color: Colors.grey,
          fontWeight: FontWeight.w400,
        ),
        errorStyle: const TextStyle(
          fontSize: 16.0,
          color: Colors.red,
          fontWeight: FontWeight.w400,
        ),
        disabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.bgGray,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(12.0),
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.bgGray,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(12.0),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.bgGray,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(12.0),
          ),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.bgGray,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(12.0),
          ),
        ),
      ),
      validator: validator,
    );
  }
}
