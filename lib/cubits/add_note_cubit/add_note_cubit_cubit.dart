import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notesapp/helper/const.dart';
import 'package:notesapp/model/note_model.dart';

part 'add_note_cubit_state.dart';

class AddNoteCubit extends Cubit<AddNoteCubitState> {
  AddNoteCubit() : super(AddNoteCubitInitial());

  addNote(NoteModel note) async {
    emit(AddNoteCubitLoading());
    try {
      var noteBox = Hive.box(kNoteBox);
      await noteBox.add(note);
      emit(AddNoteCubitSuccess());
    } catch (e) {
      emit(AddNoteCubitFailure(e.toString()));
    }
  }
}
