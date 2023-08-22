import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      this.hint,
      this.prefixIcon,
      this.onClickIcon,
      this.suffixIcon,
      this.obSecureText,
      this.boxConstraints});

  final String? hint;
  final Widget? prefixIcon;
  final bool? obSecureText;
  final Widget? suffixIcon;
  final void Function()? onClickIcon;
  final BoxConstraints? boxConstraints;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obSecureText ?? false,
      decoration: InputDecoration(
        prefixIconConstraints: boxConstraints,
        filled: true,
        fillColor: Colors.white.withOpacity(1),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        contentPadding: EdgeInsets.all(24),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: BorderSide(
            color: Colors.black.withOpacity(.2),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: BorderSide(
            color: Colors.black.withOpacity(.2),
          ),
        ),
        hintText: hint,
        hintStyle: TextStyle(
          fontSize: 18,
          color: Colors.grey,
          height: 1,
        ),
      ),
    );
  }
}
