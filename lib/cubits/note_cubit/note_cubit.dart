import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notesapp/helper/const.dart';
import 'package:notesapp/model/note_model.dart';

part 'note_cubit_state.dart';

class NoteCubit extends Cubit<NoteCubitState> {
  NoteCubit() : super(NoteCubitInitial());
  List<NoteModel>? notes;
  fetchAllNotes() async {
    var noteBox = Hive.box<NoteModel>(kNoteBox);
    notes = noteBox.values.toList();
  }
}
