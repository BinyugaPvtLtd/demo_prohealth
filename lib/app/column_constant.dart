import 'package:flutter/material.dart';

class CustomColumn extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final String text5;

  const CustomColumn({
    Key? key,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
    required this.text5,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text1,
          style: TextStyle(
            fontFamily: 'FiraSans',
            fontSize: MediaQuery.of(context).size.width/150,
            color: Color(0xFF686464),
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 15,),
        Text(
          text2,
          style: TextStyle(
            fontFamily: 'FiraSans',
            fontSize: MediaQuery.of(context).size.width/150,
            color: Color(0xFF686464),
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 15,),
        Text(
          text3,
          style: TextStyle(
            fontFamily: 'FiraSans',
            fontSize: MediaQuery.of(context).size.width/150,
            color: Color(0xFF686464),
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 15,),
        Text(
          text4,
          style: TextStyle(
            fontFamily: 'FiraSans',
            fontSize: MediaQuery.of(context).size.width/150,
            color: Color(0xFF686464),
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 15,),
        Text(
          text5,
          style: TextStyle(
            fontFamily: 'FiraSans',
            fontSize: MediaQuery.of(context).size.width/150,
            color: Color(0xFF686464),
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}

class CustomColumnSub extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final String text5;

  const CustomColumnSub({
    Key? key,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
    required this.text5,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text1,
          style: TextStyle(
            fontFamily: 'FiraSans',
            fontSize: MediaQuery.of(context).size.width/150,
            color: Color(0xFF2A2827),
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 15,),
        Text(
          text2,
          style: TextStyle(
            fontFamily: 'FiraSans',
            fontSize: MediaQuery.of(context).size.width/150,
            color: Color(0xFF2A2827),
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 15,),
        Text(
          text3,
          style: TextStyle(
            fontFamily: 'FiraSans',
            fontSize: MediaQuery.of(context).size.width/150,
            color: Color(0xFF2A2827),
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 15,),
        Text(
          text4,
          style: TextStyle(
            fontFamily: 'FiraSans',
            fontSize: MediaQuery.of(context).size.width/150,
            color: Color(0xFF2A2827),
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 15,),
        Text(
          text5,
          style: TextStyle(
            fontFamily: 'FiraSans',
            fontSize: MediaQuery.of(context).size.width/150,
            color: Color(0xFF2A2827),
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}