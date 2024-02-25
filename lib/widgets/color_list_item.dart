import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';

import 'color_item.dart';

class ColorListItem extends StatefulWidget {
  const ColorListItem({super.key});

  @override
  State<ColorListItem> createState() => _ColorListItemState();
}

class _ColorListItemState extends State<ColorListItem> {
  int currentIndex = 0;

  List color = const[
    Color(0xff41634a),
    Color(0xff5a7e64),
    Color(0xff7f8563),
    Color(0xffdb7f50),
    Color(0xffe9a37f),
    Color(0xfff6c8ae),
  ];

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
              BlocProvider.of<AddNoteCubit>(context).color =color[index];
              setState(() {});
            },
            child: ColorItem(
              isActive: currentIndex == index, color: color[index],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            width: 5,
          );
        },
      ),
    );
  }
}
