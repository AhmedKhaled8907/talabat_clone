import 'package:flutter/material.dart';
import 'package:talabat_clone/core/common/widgets/custom_text_field.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({
    super.key,
    required this.onSaved,
    required this.validator,
  });

  final void Function(String?)? onSaved;
  final String? Function(String?)? validator;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      validator: widget.validator,
      obscureText: obscureText,
      onSaved: widget.onSaved,
      hintText: AppStrings.password,
      keyboardType: TextInputType.visiblePassword,
      suffixIcon: GestureDetector(
        onTap: () {
          setState(() {
            obscureText = !obscureText;
          });
        },
        child: Icon(
          obscureText ? Icons.visibility : Icons.visibility_off,
          color: const Color(0xffC9CECF),
        ),
      ),
    );
  }
}
