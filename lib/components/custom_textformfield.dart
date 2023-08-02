import 'package:flutter/material.dart';

class CustomTextFormFieldWidget extends StatelessWidget {
  String hintText;
   CustomTextFormFieldWidget({
    required this.hintText,
    super.key,
    required this.textEmailController,
  });

  final TextEditingController textEmailController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEmailController,
      decoration:  InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
          hintText: hintText,
          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)),borderSide: const BorderSide(color: Color(0xFFFAE684), width: 2.0),),),
    );
  }
}