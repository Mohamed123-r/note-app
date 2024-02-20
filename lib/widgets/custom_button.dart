import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onPressed});

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      color: Colors.cyanAccent,
      height: 55,
      minWidth: MediaQuery.of(context).size.width,
      onPressed: onPressed,
      child: const Text(
        "Add",
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
        ),
      ),
    );
  }
}
