import 'package:eonify/assets/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController? controller;
  final int? maxLines;
  final int? maxLength;
  final Widget? label;
  final Widget? suffix;
  final FocusNode? focusNode;
  final bool hideContent;
  final TextInputAction? textInputAction;
  final BorderSide enabledBorderSide;
  final EdgeInsets contentPadding;
  final TextAlign textAlign;
  final void Function(String)? onChanged;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  const MyTextField({
    super.key,
    this.controller,
    this.maxLines,
    this.maxLength,
    this.label,
    this.suffix,
    this.focusNode,
    this.hideContent = false,
    this.textInputAction,
    this.enabledBorderSide = BorderSide.none,
    this.contentPadding = const EdgeInsets.symmetric(
      horizontal: 24.0,
      vertical: 18.0,
    ),
    this.textAlign = TextAlign.start,
    this.onChanged,
    this.keyboardType,
    this.inputFormatters,
  });

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme.bodyLarge!;

    return TextFormField(
      onTapOutside: (_) => FocusManager.instance.primaryFocus?.unfocus(),
      controller: controller,
      style: style.copyWith(color: Grey.t900),
      maxLines: maxLines,
      maxLength: maxLength,
      focusNode: focusNode,
      obscureText: hideContent,
      enableSuggestions: !hideContent,
      autocorrect: !hideContent,
      textInputAction: textInputAction,
      textAlign: textAlign,
      onChanged: onChanged,
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      decoration: InputDecoration(
        label: label,
        labelStyle: style.copyWith(color: Grey.t600),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        fillColor: Grey.t50,
        filled: true,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14.0),
          borderSide: BorderSide(color: Primary.t500),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14.0),
          borderSide: enabledBorderSide,
        ),
        contentPadding: contentPadding,
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 12.0),
          child: suffix,
        ),
        suffixIconColor: Colors.blue,
      ),
    );
  }
}
