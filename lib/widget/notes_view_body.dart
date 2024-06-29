import 'package:flutter/material.dart';
import 'package:notesapp/widget/custom_appbar.dart';
import 'package:notesapp/widget/note_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

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
            icon: Icon(Icons.search),
            title: 'Notes',
          ),
          NoteListView(),
        ],
      ),
    );
  }
}
