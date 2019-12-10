import 'package:animations/utils/labels.dart';
import 'package:animations/widgets/custom_textform.dart';
import 'package:flutter/material.dart';

class FormContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Form(
        child: Column(
          children: <Widget>[
            CustomTextFormField(
              icon: Icons.person_outline,
              hint: Label.username,
            ),
            CustomTextFormField(
              icon: Icons.lock_outline,
              obscure: true,
              hint: Label.password,
            ),
          ],
        )
      ),
    );
  }
}
