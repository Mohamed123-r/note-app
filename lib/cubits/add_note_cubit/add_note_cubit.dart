import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_states.dart';
import '../../models/note_model.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitialState());

  addNote(NoteModel note) async {
    emit(AddNoteLoadedState());
    try {
      var noteBox = Hive.box<NoteModel>("notes_box");
      emit(AddNoteSuccessState());
      await noteBox.add(note);
    } catch (e) {
      AddNoteFailureState(
        errorMessage: e.toString(),
      );
    }
  }
}
