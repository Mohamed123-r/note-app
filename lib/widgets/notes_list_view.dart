import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/show_note_cubit/show_note_cubit.dart';
import 'package:note_app/cubits/show_note_cubit/show_note_states.dart';
import 'package:note_app/models/note_model.dart';
import 'custom_note_item.dart';

class NotesListView extends StatefulWidget {
  const NotesListView({super.key});

  @override
  State<NotesListView> createState() => _NotesListViewState();
}

class _NotesListViewState extends State<NotesListView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShowNoteCubit, ShowNoteState>(
      builder: (context, state) {
        List<NoteModel> notes =
            BlocProvider.of<ShowNoteCubit>(context).showNotes();
        return ListView.builder(
          padding: EdgeInsets.zero,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: NoteItem(
                note: notes[index],
              ),
            );
          },
          itemCount: notes.length,
        );
      },
    );
  }
}
