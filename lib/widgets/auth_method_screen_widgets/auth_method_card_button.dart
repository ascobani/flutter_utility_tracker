import 'package:flutter/material.dart';

class AuthMethodCardButton extends StatelessWidget {
  IconData icon;
  String text;
  Color color;
  void Function() onPressed;

  AuthMethodCardButton(this.icon, this.text, this.color, this.onPressed,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 57,
      child: Card(
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            const SizedBox(width: 10),
            Align(
              alignment: Alignment.centerLeft,
              child: TextButton.icon(
                label: Text(
                  text,
                  style: const TextStyle(color: Colors.white, fontSize: 15),
                ),
                onPressed: onPressed,
                icon: Icon(icon, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
