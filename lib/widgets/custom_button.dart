import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, required this.onPressed, this.isLoading = false});

  final void Function() onPressed;
  final bool isLoading;

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
      child: isLoading
          ? const SizedBox(
              height: 25,
              width: 25,
              child: CircularProgressIndicator(
                color: Colors.black,
              ),
            )
          : const Text(
              "Add",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
    );
  }
}
