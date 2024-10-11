import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String hintText;
  final AutovalidateMode? autovalidateMode;
  final Function(String val)? validatorFunction;
  final TextEditingController onChange;
  final TextInputType textInputType;
  final bool? isRequired;
  final bool? customObscureText;
  final Icon? inputIcon;
  const MyTextField({
    super.key,
    required String this.hintText,
    required this.onChange,
    required this.textInputType,
    this.inputIcon,
    this.isRequired,
    this.customObscureText,
    this.autovalidateMode,
    this.validatorFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            autovalidateMode: autovalidateMode != null
                ? autovalidateMode
                : AutovalidateMode.disabled,
            validator: (value) {
              if (isRequired != null &&
                  isRequired == true &&
                  (value == null || value.isEmpty)) {
                return 'Please enter some text';
              }
              if (validatorFunction != null) return validatorFunction!(value!);
              return null;
            },
            style: TextStyle(fontSize: 20, color: Colors.white),
            controller: onChange,
            obscureText: customObscureText != null && customObscureText == true,
            keyboardType: textInputType,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
              fillColor: Color(0xff4b5563),
              filled: true,
              prefixIcon: inputIcon != null
                  ? Padding(padding: EdgeInsets.all(0.0), child: inputIcon)
                  : null,

              isDense: true, // Added this
              contentPadding: EdgeInsets.all(8),

              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
        )
      ],
    );
  }
}
