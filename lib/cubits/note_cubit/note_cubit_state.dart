part of 'note_cubit.dart';

@immutable
sealed class NoteCubitState {}

final class NoteCubitInitial extends NoteCubitState {}

final class NoteCubitLoadingState extends NoteCubitState {}

final class NoteCubitSuccessState extends NoteCubitState {
  final List<NoteModel> note;

  NoteCubitSuccessState(this.note);
}

final class NoteCubitFailureState extends NoteCubitState {
  final String errMessage;

  NoteCubitFailureState(this.errMessage);
}
