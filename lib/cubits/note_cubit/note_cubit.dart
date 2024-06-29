import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:notesapp/model/note_model.dart';

part 'note_cubit_state.dart';

class NoteCubit extends Cubit<NoteCubitState> {
  NoteCubit() : super(NoteCubitInitial());
}
