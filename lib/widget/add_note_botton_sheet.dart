import 'package:flutter/material.dart';
import 'package:notesapp/widget/custom_textfield.dart';

class AddNoteBottonSheet extends StatelessWidget {
  const AddNoteBottonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          SizedBox(height: 32),
          CustomTextField(),
        ],
      ),
    );
  }
}
