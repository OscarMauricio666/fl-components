import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? helperText;
  final String? labelText;
  final String? hintText;
  final IconData? icon;
  final IconData? suffixIcon;
  final IconData? prefixIcon;
  final TextInputType? keyboardtype;
  final bool obscureText;

  const CustomInputField(
      {Key? key,
      this.helperText,
      this.labelText,
      this.hintText,
      this.icon,
      this.suffixIcon,
      this.keyboardtype,
      this.obscureText = false,
      this.prefixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        autofocus: true,
        initialValue: '',
        textCapitalization: TextCapitalization.words,
        keyboardType: keyboardtype,
        obscureText: obscureText,
        onChanged: ((value) {
          print('value: $value');
        }),
        validator: (value) {
          if (value == null) return 'Este campo es requerdo';
          return value.length < 3 ? 'Mínimo 3 letras' : null;
        },
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          helperText: helperText,
          icon: icon == null ? null : Icon(icon),
          prefixIcon: prefixIcon == null ? null : Icon(prefixIcon),
          suffixIcon: Icon(suffixIcon),
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10))),
          //icon: Icon(Icons.ad_units_outlined),
        ));
  }
}
