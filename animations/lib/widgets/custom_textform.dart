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
          prefixIcon: Icon(
            icon,
            color: Colors.white,
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white
            )
          ),
          border: InputBorder.none,
          labelText: hint,
          labelStyle: TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
          contentPadding: EdgeInsets.only(top: 15, right: 15, left: 5, bottom: 15)
        ),
        cursorColor: Colors.white,
      ),
    );
  }
}
