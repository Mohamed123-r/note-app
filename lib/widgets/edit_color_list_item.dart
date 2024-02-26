import 'package:flutter/material.dart';
import 'package:note_app/models/note_model.dart';

import 'color_item.dart';

class EditColorListItem extends StatefulWidget {
  const EditColorListItem({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditColorListItem> createState() => _ColorListItemState();
}

class _ColorListItemState extends State<EditColorListItem> {
  late int currentIndex;

  List color = const [
    Color(0xff41634a),
    Color(0xff5a7e64),
    Color(0xff7f8563),
    Color(0xffdb7f50),
    Color(0xffe9a37f),
    Color(0xfff6c8ae),
  ];

  @override
  void initState() {
    currentIndex = color.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 66,
      child: ListView.separated(
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              currentIndex = index;
              widget.note.color = color[index].value;
              setState(() {});
            },
            child: ColorItem(
              isActive: currentIndex == index,
              color: color[index],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            width: 6,
          );
        },
      ),
    );
  }
}
