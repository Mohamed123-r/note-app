import 'package:flutter/material.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/custom_app_bar.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key, required this.note});
final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          right: 12.0,
          left: 12,
          bottom: 8,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            CustomAppBar(
              title: 'Edit Note',
              icon: Icons.check,
            ),
            SizedBox(
              height: 32,
            ),
            CustomFormTextField(
              labelText: 'Title',
            ),
            SizedBox(
              height: 20,
            ),
            CustomFormTextField(
              labelText: 'Context',
              maxLines: 5,
            ),
          ],
        ),
      ),
    );
  }
}
