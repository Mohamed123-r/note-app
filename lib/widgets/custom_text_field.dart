import 'package:flutter/material.dart';

class CustomFormTextField extends StatelessWidget {
  const CustomFormTextField({
    super.key,
    this.onChanged,
    required this.labelText,
     this.maxLines=1,
  });

  final Function(String)? onChanged;
  final String labelText;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      onChanged: onChanged,
      decoration: InputDecoration(
        labelStyle: const TextStyle(
          color: Colors.cyanAccent,
        ),
        label: Text(labelText),
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
