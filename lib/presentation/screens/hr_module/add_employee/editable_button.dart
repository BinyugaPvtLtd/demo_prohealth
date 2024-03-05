import 'package:flutter/material.dart';

class EditableButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onPressed;

  const EditableButton({
    Key? key,
    required this.icon,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,
      icon: Icon(
        icon,
        color: Color(0xFF1696C8),
      ),
      label: Text(
        text,
        style: TextStyle(
          color: Color(0xFF1696C8),
          fontSize: MediaQuery.of(context).size.width / 120,
        ),
      ),
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
