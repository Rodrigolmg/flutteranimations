import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {

  final IconData icon;
  final String hint;
  final bool obscure;

  CustomTextFormField({
    this.icon,
    this.hint,
    this.obscure = false
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.white24,
            width: 0.5
          )
        )
      ),
      child: TextFormField(
        obscureText: obscure,
        style: TextStyle(
          color: Colors.white
        ),
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: Colors.white,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(1.0)
            ),
            borderSide: BorderSide(
              color: Colors.white24
            )
          ),
          border: InputBorder.none,
          hintText: hint,
          hintStyle: TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
          contentPadding: EdgeInsets.only(top: 30, right: 30, left: 5, bottom: 30)
        ),
      ),
    );
  }
}
