import 'package:flutter/material.dart';
import 'package:notesapp/widget/custom_appbar.dart';
import 'package:notesapp/widget/custom_textfield.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            title: 'Edit Note',
            icon: Icon(Icons.check),
          ),
          SizedBox(
            height: 24,
          ),
          CustomTextField(hint: 'Title', maxLine: 1),
          SizedBox(
            height: 16,
          ),
          CustomTextField(hint: 'Content', maxLine: 10),
        ],
      ),
    );
  }
}
