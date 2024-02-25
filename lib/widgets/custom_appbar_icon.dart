import 'package:flutter/material.dart';

class CustomAppBarIcon extends StatelessWidget {
  const CustomAppBarIcon({super.key, required this.icon, this.onPressed});
final IconData icon;
 final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.08),
          borderRadius: BorderRadius.circular(12)),
      width: 47,
      height: 47,
      child:  IconButton(
        icon: Icon(
          icon,
          size: 32,
        ), onPressed: onPressed,
      ),
    );
  }
}