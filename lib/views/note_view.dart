import 'package:flutter/material.dart';
import 'package:notesapp/widget/add_note_botton_sheet.dart';
import 'package:notesapp/widget/notes_view_body.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.add,
          size: 28,
        ),
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            context: context,
            builder: (context) {
              return const AddNoteBottonSheet();
            },
          );
        },
      ),
      body: const NotesViewBody(),
    );
  }
}
