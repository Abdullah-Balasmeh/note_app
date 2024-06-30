import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notesapp/cubits/note_cubit/note_cubit.dart';
import 'package:notesapp/widget/add_note_form.dart';

class AddNoteBottonSheet extends StatelessWidget {
  const AddNoteBottonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Padding(
        padding: EdgeInsets.only(
            left: 16.0,
            right: 16,
            bottom: MediaQuery.of(context).viewInsets.bottom),
        child: BlocConsumer<AddNoteCubit, AddNoteCubitState>(
          listener: (context, state) {
            if (state is AddNoteCubitSuccessState) {
              BlocProvider.of<NoteCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return AbsorbPointer(
              absorbing: state is AddNoteCubitLoadingState ? true : false,
              child: const SingleChildScrollView(
                child: AddNoteForm(),
              ),
            );
          },
        ),
      ),
    );
  }
}
