import 'package:flutter/material.dart';
import 'custom_text_field.dart';

class AddModelButtonSheet extends StatelessWidget {
  const AddModelButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
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
    );
  }
}
