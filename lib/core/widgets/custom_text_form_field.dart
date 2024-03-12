import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:testtt/core/helper/app_colors.dart';
import 'package:testtt/core/widgets/text_builder.dart';

class CustomTextFormField extends StatelessWidget {
  final double? suffixIconSize;
  final double? prefixIconSize;
  final TextEditingController? controller;
  final String labelText;
  final String? hintText;
  final TextInputType? keyboardType;
  final IconData? prefixIcon;
  final Color? prefixIconColor;
  final String? Function(String?)? validator;
  final IconData? suffixIcon;
  final Color? suffixColor;
  final Function()? suffixPressed;
  final Function()? prefixPressed;
  final bool isSecure;
  final bool isLabelBold;
  final bool isContentBold;
  final bool centerContent;
  final double contentSize;
  final Function(String)? onSubmit;
  final Function(String)? onChange;
  final Function()? onTap;
  final bool isClickable;
  final Color backgroundOfTextFeild;
  final Color notFocusedBorderColor;
  final Color focusedBorderColor;
  final int? maxLines;
  final FocusNode? focusNode;
  final bool readOnly;
  final bool hasInputFormatters;
  final List<TextInputFormatter>? inputFormatters;
  const CustomTextFormField({
    super.key,
    this.readOnly = false,
    this.hasInputFormatters = false,
    this.centerContent = false,
    this.controller,
    this.inputFormatters,
    required this.labelText,
    this.prefixPressed,
    this.hintText,
    this.contentSize = 16,
    this.keyboardType,
    this.prefixIcon,
    this.prefixIconColor = AppColors.primaryColorBlue,
    this.validator,
    this.suffixIconSize,
    this.prefixIconSize,
    this.suffixIcon,
    this.suffixColor = AppColors.primaryColorBlue,
    this.suffixPressed,
    this.isSecure = false,
    this.isLabelBold = false,
    this.isContentBold = false,
    this.onSubmit,
    this.isClickable = true,
    this.maxLines = 1,
    this.focusNode,
    this.onChange,
    this.onTap,
    this.backgroundOfTextFeild = const Color.fromRGBO(227, 227, 227, 1),
    this.notFocusedBorderColor = Colors.transparent,
    this.focusedBorderColor = Colors.transparent,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        readOnly: readOnly,
        obscureText: isSecure,
        validator: validator,
        controller: controller,
        maxLines: maxLines,
        focusNode: focusNode,
        textAlign: centerContent ? TextAlign.center : TextAlign.justify,
        decoration: InputDecoration(
          alignLabelWithHint: true,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8),
          floatingLabelBehavior: FloatingLabelBehavior.never,
          floatingLabelStyle: TextStyle(
            color: focusedBorderColor,
            fontWeight: FontWeight.bold,
          ),
          filled: true,
          fillColor: backgroundOfTextFeild,
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(16))),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 2, color: notFocusedBorderColor),
              borderRadius: const BorderRadius.all(Radius.circular(16))),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            borderSide: BorderSide(color: focusedBorderColor, width: 2),
          ),
          label: TextBuilder(
            labelText,
            isHeader: isLabelBold,
          ),
          hintText: hintText,
          prefixIcon: prefixIcon == null
              ? null
              : IconButton(
                  onPressed: prefixPressed,
                  icon: Icon(
                    prefixIcon,
                    color: prefixIconColor,
                    size: prefixIconSize,
                  ),
                ),
          suffixIcon: suffixIcon == null
              ? null
              : IconButton(
                  onPressed: suffixPressed,
                  icon: Icon(
                    suffixIcon,
                    color: suffixColor,
                    size: suffixIconSize,
                  ),
                ),
        ),
        keyboardType: keyboardType,
        onFieldSubmitted: onSubmit,
        onChanged: onChange,
        onTap: onTap,
        enabled: isClickable,
        inputFormatters: hasInputFormatters ? inputFormatters : null,
      ),
    );
  }
}
