import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? textEditingController;
  final double width;
  final Icon? suffixIcon;
  final Icon? preffixIcon;
  final String? hintText;
  final bool? enabled;
  const CustomTextField(
      {super.key,
      required this.width,
      this.textEditingController,
      this.enabled,
      this.suffixIcon,
      this.preffixIcon,
      this.hintText});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 40,
      child: TextField(
        enabled: enabled,
        controller: textEditingController,
        decoration: InputDecoration(
            hintText: hintText,
            prefixIcon: preffixIcon,
            suffixIcon: suffixIcon,
            border: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(25))),
      ),
    );
  }
}
