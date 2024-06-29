import 'package:flutter/material.dart';
import 'package:notesapp/widget/custom_button.dart';
import 'package:notesapp/widget/custom_textfield.dart';

class AddNoteBottonSheet extends StatelessWidget {
  const AddNoteBottonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 32),
            CustomTextField(
              hint: 'Title',
              maxLine: 1,
            ),
            SizedBox(height: 16),
            CustomTextField(
              hint: 'Content',
              maxLine: 10,
            ),
            SizedBox(height: 36),
            CustomButton(
              buttonType: 'Add',
            ),
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
