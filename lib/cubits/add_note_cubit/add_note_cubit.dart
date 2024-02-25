import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_states.dart';
import '../../models/note_model.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitialState());
Color? color=const Color(0xff41634a);
  addNote(NoteModel note) async {
    note.color=color!.value;
    emit(AddNoteLoadedState());
    try {
      var noteBox = Hive.box<NoteModel>("notes_box");
      await noteBox.add(note);
      emit(AddNoteSuccessState());
    } catch (e) {
     emit(AddNoteFailureState(
       errorMessage: e.toString(),
     )) ;
    }
  }
}
