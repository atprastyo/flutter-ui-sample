import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  const TextInput({
    Key? key,
    this.initialValue,
    this.onChanged,
    this.validator,
    this.maxLine,
    this.controller,
    this.icon,
    this.suffixIcon,
    this.focusNode,
    this.autoValidateMode = AutovalidateMode.onUserInteraction,
    required this.hint,
    this.hasFocus = false,
    this.obscureText = false,
    this.type = TextInputType.text,
  }) : super(key: key);

  final String? initialValue;
  final String hint;
  final ValueChanged<String>? onChanged;
  final FormFieldValidator<String>? validator;
  final int? maxLine;
  final Icon? icon;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final AutovalidateMode autoValidateMode;
  final FocusNode? focusNode;
  final bool hasFocus;
  final bool obscureText;
  final TextInputType type;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.06),
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextFormField(
        focusNode: focusNode,
        controller: controller,
        keyboardType: type,
        textInputAction: TextInputAction.next,
        autovalidateMode: autoValidateMode,
        cursorColor: Colors.white,
        initialValue: initialValue,
        maxLines: maxLine,
        obscureText: obscureText,
        style: Theme.of(context)
            .textTheme
            .bodyMedium
            ?.copyWith(height: 1, color: Colors.white),
        textAlignVertical: suffixIcon != null ? TextAlignVertical.center: null,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
          hintText: hint,
          prefixIcon: icon,
          suffixIcon: suffixIcon,
          hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: hasFocus ? Colors.white : Colors.white.withOpacity(.40),
              ),
          border: InputBorder.none,
        ),
        onChanged: onChanged,
        validator: validator,
      ),
    );
  }
}
