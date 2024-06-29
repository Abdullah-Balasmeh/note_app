import 'package:flutter/material.dart';
import 'package:notesapp/helper/const.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.buttonType, this.onTap});
  final String buttonType;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: kColor,
        ),
        child: Center(
            child: Text(
          buttonType,
          style: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black),
        )),
      ),
    );
  }
}
