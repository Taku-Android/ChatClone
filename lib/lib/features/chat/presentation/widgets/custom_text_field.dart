import 'package:flutter/material.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/image_path.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.controller, required this.onPressed});

  final TextEditingController controller;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white.withOpacity(.1),
        // Set fill color to grey
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: const BorderSide(
            color: Colors.white, // White border when focused
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: const BorderSide(
            color: Colors.grey, // Grey border when not focused
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16),
        hintText: 'Enter text...',
        hintStyle: const TextStyle(color: Colors.grey),
        suffixIcon: Container(
          width: 40,
          height: 40,
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: AppColor.buttonColor,
          ),
          child: IconButton(
            icon: Image.asset(
              ImagePath.send,
            ),
            onPressed: onPressed,
          ),
        ),
      ),
      style: const TextStyle(color: Colors.white),
    );
  }
}
