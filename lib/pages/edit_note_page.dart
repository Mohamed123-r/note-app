import 'package:flutter/material.dart';
import 'package:note_app/models/note_model.dart';

import '../widgets/edit_note_view_body.dart';

class EditNotePage extends StatelessWidget {
  const EditNotePage({super.key, required this.note});
final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return  EditNoteViewBody(note: note,);
  }
}
