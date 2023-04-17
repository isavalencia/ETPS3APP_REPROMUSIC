import 'package:flutter/material.dart';

class UndeLineInputField extends StatelessWidget {
  final String hint;
  final TextEditingController? controller;
  final FormFieldValidator? validator;

  const UndeLineInputField(
      {super.key, required this.hint, this.controller, this.validator});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      child: TextFormField(
        //autovalidateMode: true,
        validator: validator,
        controller: controller,
        decoration: InputDecoration(
          hintText: hint,
        ),
      ),
    );
  }
}
