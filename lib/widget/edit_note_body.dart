import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/note_cubit/note_cubit.dart';
import 'package:notesapp/model/note_model.dart';
import 'package:notesapp/widget/custom_appbar.dart';
import 'package:notesapp/widget/custom_textfield.dart';
import 'package:notesapp/widget/edit_note_color_list.dart';

class EditNoteBody extends StatefulWidget {
  const EditNoteBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteBody> createState() => _EditNoteBodyState();
}

class _EditNoteBodyState extends State<EditNoteBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: 16,
          right: 16,
          bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          CustomAppBar(
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = content ?? widget.note.subTitle;
              widget.note.save();
              BlocProvider.of<NoteCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
            title: 'Edit Note',
            icon: const Icon(Icons.check),
          ),
          const SizedBox(
            height: 24,
          ),
          CustomTextField(
            hint: widget.note.title,
            maxLine: 1,
            onChanged: (value) {
              title = value;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            hint: widget.note.subTitle,
            maxLine: 10,
            onChanged: (value) {
              content = value;
            },
          ),
          EditNoteColorList(
            note: widget.note,
          ),
        ],
      ),
    );
  }
}
