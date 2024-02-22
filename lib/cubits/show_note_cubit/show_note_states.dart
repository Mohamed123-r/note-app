import '../../models/note_model.dart';

abstract class ShowNoteState {}

class ShowNoteInitialState extends ShowNoteState {}

class ShowNoteLoadedState extends ShowNoteState {}

class ShowNoteSuccessState extends ShowNoteState {
  ShowNoteSuccessState(this.notes);

  final List<NoteModel> notes;
}

class ShowNoteFailureState extends ShowNoteState {
  final String errorMessage;

  ShowNoteFailureState({required this.errorMessage});
}
