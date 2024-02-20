import 'package:flutter/material.dart';
import 'add_note_form.dart';


class AddModelButtonSheet extends StatelessWidget {
  const AddModelButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}


