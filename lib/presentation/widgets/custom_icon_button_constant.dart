import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback onPressed;

  const CustomIconButton({
    required this.text,
    required this.icon,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(icon,color: Colors.white,size: 20,),
      label: Text(text,style: TextStyle(
          fontFamily: 'FiraSans',
          fontSize: 12,
          fontWeight: FontWeight.w700,
          color: Colors.white),),
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        backgroundColor: Color(0xFF50B5E5),
        shadowColor: Colors.grey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
