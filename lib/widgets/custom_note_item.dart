import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 24,
        horizontal: 18,
      ),
      decoration: BoxDecoration(
        color: const Color(0xffffcc80),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: const Text(
              "First Note ",
              style: TextStyle(
                fontSize: 26,
                color: Colors.black,
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(
                top: 16.0,
                bottom: 16,
              ),
              child: Text(
                "enter your first note enter your first note",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black.withOpacity(0.4),
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.delete,
                size: 32,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Text(
              "May22, 2024 ",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black.withOpacity(0.4),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
