import 'package:flutter/material.dart';

class ReusableInputField extends StatelessWidget {
  final String? labelText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final Color? borderColor;
  final bool? enabled;
  final bool? hasLabelText;
  final bool obscureText;
  final Color enabledBorderColor;
  final double borderRadius;
  final Color labelColor;
  final String hintText;
  final double height;
  final TextEditingController controller;

  const ReusableInputField(
      {Key? key,
      this.labelText,
      this.prefixIcon,
      this.suffixIcon,
      this.borderColor,
      this.enabled,
      this.hasLabelText,
      required this.borderRadius,
      required this.enabledBorderColor,
      required this.obscureText,
      required this.labelColor,
      required this.hintText,
      required this.height,
      required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: MediaQuery.of(context).size.width,
      child: TextField(
        controller: controller,
        enabled: null == enabled ? true : false,
        obscureText: obscureText,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(left: 10.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide:
                  const BorderSide(color: Colors.transparent, width: 2.0)),
          filled: true,
          fillColor: Colors.transparent,
          focusColor: Colors.transparent,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide:
                  const BorderSide(color: Colors.transparent, width: 2.0)),
          hintText: hintText,
          hintStyle: TextStyle(
              fontSize: 13.0,
              fontWeight: FontWeight.w500,
              color: Colors.grey[400]),
          labelText: hasLabelText == true ? labelText : null,
          labelStyle: TextStyle(
              color: labelColor, fontSize: 14.0, fontWeight: FontWeight.bold),
          suffixIcon: null == suffixIcon
              ? null
              : Icon(suffixIcon, color: labelColor, size: 20.0),
          prefixIcon: null == prefixIcon
              ? null
              : Icon(prefixIcon, color: labelColor, size: 20.0),
        ),
      ),
    );
  }
}
