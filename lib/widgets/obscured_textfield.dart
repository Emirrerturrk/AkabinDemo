import 'package:akabin_demo/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({
    super.key,
    required this.isObsecured,
  });

  final bool isObsecured;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool isObsecured = true;

  void obsecure() {
    setState(() {
      isObsecured = !isObsecured;
    });
  }

  @override
  Widget build(BuildContext context) {
    var passwordText = "Şifre";
    return CustomTextField(
      obscureText: isObsecured,
      textInputType: TextInputType.text,
      inputDecoration: InputDecoration(
          suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  obsecure();
                });
              },
              icon: isObsecured
                  ? const Icon(Icons.visibility)
                  : const Icon(Icons.visibility_off)),
          prefixIcon: const Icon(Icons.password),
          labelText: passwordText),
    );
  }
}
