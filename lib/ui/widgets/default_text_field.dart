import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neumorphic_ui/neumorphic_ui.dart';
import 'package:portfolio/core/constants/const_neumorphic.dart';

import '../../core/constants/const_colors.dart';

class DefaultTextField extends StatefulWidget {
  final String hnt;
  final TextEditingController controller;
  final bool obscureText;
  final bool isEnabled;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final String? Function(String?)? onChanged;
  final Color borderColor;
  final double? wd;
  final int maxLength;
  final int maxLines;

  const DefaultTextField({
    super.key,
    required this.hnt,
    this.validator,
    this.onChanged,
    required this.controller,
    this.obscureText = false,
    this.isEnabled = true,
    required this.keyboardType,
    this.borderColor = Colors.white,
    this.wd,
    this.maxLength = 0,
    this.maxLines = 0,
  });

  @override
  State<DefaultTextField> createState() => _DefaultTextFieldState();
}

class _DefaultTextFieldState extends State<DefaultTextField> {
  bool pass = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pass = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  const EdgeInsets.all(20),
      width: MediaQuery.sizeOf(context).width / 2,
      child: TextFormField(
        enabled: widget.isEnabled,
        maxLength: widget.maxLength != 0 ? widget.maxLength : null,
        maxLines: widget.obscureText
            ? 1
            : widget.maxLines != 0
                ? widget.maxLines
                : null,
        inputFormatters: widget.keyboardType == TextInputType.number
            ? [
                FilteringTextInputFormatter.allow(RegExp('[0-9]')),
              ]
            : widget.keyboardType == TextInputType.phone
                ? [
                    FilteringTextInputFormatter.allow(RegExp('[0-9]')),
                  ]
                : null,
        style:  GoogleFonts.righteous(
            color: ConstColors.kTextSecondaryColor,
            fontSize: MediaQuery.sizeOf(context).width / 70,
            fontWeight: FontWeight.bold),
        validator: widget.validator,
        onChanged: widget.onChanged,
        keyboardType: widget.keyboardType,
        obscureText: pass,
        controller: widget.controller,
        decoration: InputDecoration(
          disabledBorder: buildOutlineInputBorder(context),
          focusedBorder: buildOutlineInputBorder(context),
          focusedErrorBorder: buildOutlineInputBorder(context),
          errorBorder: buildOutlineInputBorder(context),
          enabledBorder: buildOutlineInputBorder(context),
          border:buildOutlineInputBorder(context),
          suffixIcon: widget.obscureText
              ? GestureDetector(
                  onTap: () {
                    setState(() {
                      pass = !pass;
                    });
                  },
                  child: pass
                      ? const Icon(
                          Icons.visibility_off_outlined,
                          color: Colors.white,
                        )
                      : const Icon(
                          Icons.visibility_outlined,
                          color: Colors.white,
                        ),
                )
              : null,


          hintText: widget.hnt,
          hintStyle:  GoogleFonts.righteous(
              color: ConstColors.kTextSecondaryColor,
              fontSize: MediaQuery.sizeOf(context).width / 70,
              fontWeight: FontWeight.normal),
          labelStyle: GoogleFonts.righteous(
              color: ConstColors.kTextSecondaryColor,
              fontSize: MediaQuery.sizeOf(context).width / 70,
              fontWeight: FontWeight.normal),
          // fillColor: ConstColors.kTextFieldBGColor,
          // filled: true,

          labelText: widget.hnt,
          floatingLabelBehavior: FloatingLabelBehavior.auto,
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder(BuildContext context) {
    return OutlineInputBorder(
          borderRadius:
              BorderRadius.circular(MediaQuery.sizeOf(context).width / 100),
          borderSide:  BorderSide(
              color: ConstColors.kTextSecondaryColor,
              width: 2,
              style: BorderStyle.solid),
          gapPadding: MediaQuery.sizeOf(context).width / 50,
        );
  }
}
