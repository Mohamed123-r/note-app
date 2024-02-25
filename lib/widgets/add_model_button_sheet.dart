import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_states.dart';
import 'package:note_app/cubits/show_note_cubit/show_note_cubit.dart';
import 'add_note_form.dart';

class AddModelButtonSheet extends StatelessWidget {
  const AddModelButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          right: 16.0,
          left: 16,
          bottom: MediaQuery.of(context).viewInsets.bottom),
      child: BlocProvider(
        create: (BuildContext context) => AddNoteCubit(),
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          builder: (context, state) {
            return AbsorbPointer(
              absorbing: state is AddNoteLoadedState ? true : false,
              child: const SingleChildScrollView(
                child: AddNoteForm(),
              ),
            );
          },
          listener: (context, state) {
            if (state is AddNoteFailureState) {
              debugPrint("Failure ${state.errorMessage}");
            }
            if (state is AddNoteSuccessState) {
              BlocProvider.of<ShowNoteCubit>(context).showNotes();
              Navigator.pop(context);
            }
          },
        ),
      ),
    );
  }
}
