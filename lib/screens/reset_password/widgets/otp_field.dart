import 'package:eonify/assets/colors/colors.dart';
import 'package:eonify/common/wigdets/my_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OtpField extends StatelessWidget {
  const OtpField({super.key});

  @override
  Widget build(BuildContext context) {
    return MyTextField(
      maxLength: 1,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      keyboardType: TextInputType.number,
      enabledBorderSide: BorderSide(
        color: Grey.t100,
      ),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 24.0,
        vertical: 25.0,
      ),
      onChanged: (value) {
        if (value.length == 1) {
          FocusScope.of(context).nextFocus();
        }
      },
    );
  }
}
