import 'package:flutter/material.dart';
import 'custom_appbar_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon});

  
 final String title ;
 final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 32,
            ),
          ),
          const Spacer(),
          CustomAppBarIcon(icon: icon,),
        ],
      ),
    );
  }
}
