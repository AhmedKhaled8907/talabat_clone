import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';

class MoreNotesTextField extends StatefulWidget {
  const MoreNotesTextField({super.key});

  @override
  State<MoreNotesTextField> createState() => _MoreNotesTextFieldState();
}

class _MoreNotesTextFieldState extends State<MoreNotesTextField> {
  final TextEditingController _notesController = TextEditingController();
  static const int _maxLength = 300;

  @override
  void dispose() {
    _notesController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _notesController,
      onChanged: (value) {
        setState(() {});
      },
      maxLength: _maxLength,
      decoration: InputDecoration(
        counter: Text(
          '${_notesController.text.length}/$_maxLength',
          style: AppStyles.styleMedium12(context),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSize.s16),
        ),
        enabledBorder: _buildBorder(),
        focusedBorder: _buildBorder(color: AppColors.primaryColor),
        errorBorder: _buildBorder(color: AppColors.red),
      ),
      minLines: 5,
      maxLines: 5,
    );
  }

  OutlineInputBorder _buildBorder({Color? color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppSize.s16),
      borderSide: BorderSide(
        color: color ?? AppColors.secondaryColor,
      ),
    );
  }
}
