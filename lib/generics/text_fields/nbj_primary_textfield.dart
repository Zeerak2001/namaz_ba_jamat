import 'package:flutter/material.dart';
import 'package:namaz_ba_jamat/generics/constants/theme_colors.dart';

class NbjPrimaryTextfield extends StatefulWidget {
  final String labelText;
  final String hintText;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final bool obscureText;
  final String? Function(String?)? validator;
  final EdgeInsetsGeometry padding;
  final Icon? prefixIcon;
  final IconButton? suffixIcon;

  NbjPrimaryTextfield({
    required this.labelText,
    required this.controller,
    this.hintText = '',
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.validator,
    this.padding = const EdgeInsets.all(8.0),
    this.prefixIcon,
    this.suffixIcon,
  });

  @override
  _NbjPrimaryTextfieldState createState() => _NbjPrimaryTextfieldState();
}

class _NbjPrimaryTextfieldState extends State<NbjPrimaryTextfield> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding,
      child: TextFormField(
        controller: widget.controller,
        keyboardType: widget.keyboardType,
        obscureText: widget.obscureText,
        cursorColor: ThemeColors.kThemeColor,
        decoration: InputDecoration(
          labelText: widget.labelText,
          hintText: widget.hintText,
          border: const OutlineInputBorder(),
          prefixIcon: widget.prefixIcon,
          suffixIcon: widget.suffixIcon,
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: ThemeColors.kThemeColor,
              width: 2.0,
            ),
          ),
          errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red,
              width: 2.0,
            ),
          ),
          hoverColor: Colors.blueAccent.withOpacity(1),
        ),
        validator: widget.validator,
      ),
    );
  }
}
