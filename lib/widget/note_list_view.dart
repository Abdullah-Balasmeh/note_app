import 'package:flutter/material.dart';
import 'package:notesapp/widget/custom_note_item.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.all(0),
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(top: 10),
            child: NoteItem(),
          );
        },
      ),
    );
  }
}
