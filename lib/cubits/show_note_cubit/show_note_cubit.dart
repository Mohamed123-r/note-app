import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_states.dart';

class ShowNoteCubit extends Cubit<AddNoteState> {
  ShowNoteCubit() : super(AddNoteInitialState());
}
