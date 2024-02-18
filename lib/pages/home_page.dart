import 'package:flutter/material.dart';
import 'package:note_app/widgets/notes_view_body.dart';

import '../widgets/add_model_button_sheet.dart';

class HomePae extends StatelessWidget {
  const HomePae({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return const AddModelButtonSheet();
            },
          );
        },
        backgroundColor: Colors.cyanAccent,
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
      body: const NotesViewBody(),
    );
  }
}

