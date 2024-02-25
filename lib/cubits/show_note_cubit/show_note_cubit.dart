import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/cubits/show_note_cubit/show_note_states.dart';
import '../../models/note_model.dart';

class ShowNoteCubit extends Cubit<ShowNoteState> {
  ShowNoteCubit() : super(ShowNoteInitialState());

  showNotes() {
    var noteBox = Hive.box<NoteModel>("notes_box");
    List<NoteModel> notes = noteBox.values.toList();
    emit(ShowNoteSuccessState());
    return notes;
  }
}
