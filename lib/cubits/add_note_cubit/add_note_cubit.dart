import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notesapp/helper/const.dart';
import 'package:notesapp/model/note_model.dart';

part 'add_note_cubit_state.dart';

class AddNoteCubit extends Cubit<AddNoteCubitState> {
  AddNoteCubit() : super(AddNoteCubitInitialState());
  Color? color = const Color(0xff023c40);
  addNote(NoteModel note) async {
    note.color = color!.value;
    emit(AddNoteCubitLoadingState());
    try {
      var noteBox = Hive.box<NoteModel>(kNoteBox);

      await noteBox.add(note);
      emit(AddNoteCubitSuccessState());
    } catch (e) {
      emit(AddNoteCubitFailureState(e.toString()));
    }
  }
}
