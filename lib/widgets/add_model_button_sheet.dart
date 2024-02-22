import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_states.dart';
import 'add_note_form.dart';

class AddModelButtonSheet extends StatelessWidget {
  const AddModelButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        builder: (context, state) {
          return ModalProgressHUD(
            inAsyncCall: state is AddNoteLoadedState ? true : false,
            child: const SingleChildScrollView(
              child: AddNoteForm(),
            ),
          );
        },
        listener: (context, state) {
          if (state is AddNoteFailureState) {
            print("Failure ${state.errorMessage}");
          }
          if (state is AddNoteSuccessState) {
            Navigator.pop(context);
          }
        },
      ),
    );
  }
}
