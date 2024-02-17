import 'package:flutter/material.dart';
import 'custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        children: [
          Text(
            "Notes",
            style: TextStyle(
              fontSize: 32,
            ),
          ),
          Spacer(),
          CustomSearchIcon(),
        ],
      ),
    );
  }
}
