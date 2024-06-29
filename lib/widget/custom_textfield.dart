import 'package:flutter/material.dart';
import 'package:notesapp/helper/const.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kColor,
      decoration: InputDecoration(
        hintText: 'Title',
        hintStyle: const TextStyle(
          color: kColor,
        ),
        border: buildBorder(),
        focusedBorder: buildBorder(kColor),
        enabledBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
