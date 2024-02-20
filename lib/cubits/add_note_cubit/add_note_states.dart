abstract class AddNoteState {}

class AddNoteInitialState extends AddNoteState {}

class AddNoteLoadedState extends AddNoteState {}

class AddNoteSuccessState extends AddNoteState {}

class AddNoteFailureState extends AddNoteState {
  final String errorMessage;

  AddNoteFailureState({required this.errorMessage});
}
