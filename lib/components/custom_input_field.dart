import 'package:flutter/material.dart';
import '../common/styles.dart';

class CustomInputField extends StatelessWidget {
  const CustomInputField({
    Key? key,
    this.label,
    this.initialValue,
    this.controller,
    this.isFieldRequired = false,
    this.inputType = TextInputType.text,
    this.isObsecure = false,
    this.readOnly = false,
    this.focusNode,
    this.inputAction = TextInputAction.next,
    this.validator,
    this.onFieldSubmitted,
    this.onChanged,
    this.hint,
    this.prefixText,
    this.prefix,
    this.suffix,
  }) : super(key: key);

  final String? label;
  final String? hint;
  final bool isFieldRequired;
  final String? initialValue;
  final TextEditingController? controller;
  final TextInputType inputType;
  final bool isObsecure;
  final String? prefixText;
  final Widget? prefix;
  final Widget? suffix;
  final String? Function(String?)? validator;
  final FocusNode? focusNode;
  final TextInputAction? inputAction;
  final Function(String)? onFieldSubmitted;
  final Function(String?)? onChanged;
  final bool readOnly;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: RichText(
              text: TextSpan(
                text: label,
                style: TextStyles(context).bodyText2.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                children: isFieldRequired
                    ? [
                        TextSpan(
                          text: ' *',
                          style: TextStyles(context).bodyText2.copyWith(
                                fontWeight: FontWeight.w500,
                                color: Colors.red[600],
                              ),
                        )
                      ]
                    : null,
              ),
            ),
          ),
        TextFormField(
          initialValue: initialValue,
          controller: controller,
          keyboardType: inputType,
          obscureText: isObsecure,
          readOnly: readOnly,
          focusNode: focusNode,
          textInputAction: TextInputAction.next,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: validator,
          onFieldSubmitted: onFieldSubmitted,
          onChanged: onChanged,
          decoration: Styles.inputDecoration.copyWith(
            hintText: hint,
            prefixText: prefixText,
            prefixIcon: prefix,
            suffixIcon: suffix,
          ),
        ),
      ],
    );
  }
}
