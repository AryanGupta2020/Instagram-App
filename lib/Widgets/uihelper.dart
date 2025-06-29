import 'package:flutter/material.dart';

class UiHelper {
  // Custom Text Button
  static Widget CustomTextButton({
    required VoidCallback callback,
    required String text,
  }) {
    return TextButton(
      onPressed: callback,
      child: Text(
        text,
        style: TextStyle(color: Color(0XFF3797EF), fontSize: 14),
      ),
    );
  }

  // Custom Text Field with optional text input type
  static Widget CustomTextField({
    required TextEditingController controller,
    required String text,
    required bool tohide,
    TextInputType textinputtype = TextInputType.text, // ✅ default value
  }) {
    return Container(
      height: 50,
      width: 343,
      decoration: BoxDecoration(
        color: Color(0XFF121212),
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.white24),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: TextField(
          controller: controller,
          obscureText: tohide,
          keyboardType: textinputtype, // ✅ used here
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            hintText: text,
            hintStyle: TextStyle(fontSize: 14, color: Colors.white),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }

  // Custom Image from assets
  static Widget CustomImage({required String imgurl}) {
    return Image.asset("assets/images/$imgurl");
  }

  // Custom Elevated Button
  static Widget CustomButton({
    required VoidCallback callback,
    required String buttonname,
  }) {
    return SizedBox(
      height: 45,
      width: 343,
      child: ElevatedButton(
        onPressed: callback,
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0XFF3797EF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        child: Center(
          child: Text(
            buttonname,
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
