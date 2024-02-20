import 'package:flutter/material.dart';

class CustomFormTextField extends StatelessWidget {
  const CustomFormTextField({
    super.key,
    this.onSaved,
    required this.labelText,
    this.maxLines = 1,
  });

  final void Function(String?)? onSaved;
  final String labelText;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "Field is required";
        } else {
          return null;
        }
      },
      maxLines: maxLines,
      onSaved: onSaved,
      decoration: InputDecoration(
        labelStyle: const TextStyle(
          color: Colors.cyanAccent,
        ),
        label: Text(labelText),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.deepOrangeAccent,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.white,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.white,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.cyanAccent,
          ),
        ),
      ),
    );
  }
}
