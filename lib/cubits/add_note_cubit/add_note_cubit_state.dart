part of 'add_note_cubit.dart';

@immutable
sealed class AddNoteCubitState {}

final class AddNoteCubitInitialState extends AddNoteCubitState {}

final class AddNoteCubitLoadingState extends AddNoteCubitState {}

final class AddNoteCubitSuccessState extends AddNoteCubitState {}

final class AddNoteCubitFailureState extends AddNoteCubitState {
  final String errMessage;

  AddNoteCubitFailureState(this.errMessage);
}
