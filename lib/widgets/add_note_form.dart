import 'package:flutter/material.dart';
import 'custom_button.dart';
import 'custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {

  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title;
  String? subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustomFormTextField(
            onSaved: (value) {
              value = title;
            },
            labelText: 'Title',
          ),
          const SizedBox(
            height: 20,
          ),
          CustomFormTextField(
            onSaved: (value) {
              value = subTitle;
            },
            labelText: 'Context',
            maxLines: 5,
          ),
          const SizedBox(
            height: 90,
          ),
          CustomButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
        ],
      ),
    );
  }
}
