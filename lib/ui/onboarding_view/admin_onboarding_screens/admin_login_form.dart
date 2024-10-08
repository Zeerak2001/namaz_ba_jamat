import 'package:flutter/material.dart';
import 'package:namaz_ba_jamat/generics/buttons/primary_button.dart';
import '../../../generics/text_fields/nbj_primary_textfield.dart';

class LoginForm extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final VoidCallback onLoginPressed;

  LoginForm({
    required this.formKey,
    required this.emailController,
    required this.passwordController,
    required this.onLoginPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          NbjPrimaryTextfield(
            controller: emailController,
            labelText: 'Email',
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              }
              return null;
            },
          ),
          SizedBox(height: 5.0),
          NbjPrimaryTextfield(
            controller: passwordController,
            obscureText: true,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your password';
              }
              return null;
            },
            labelText: 'Password',
          ),
          SizedBox(height: 16.0),
          SizedBox(
            width: 100,
            child: NbjPrimaryButton(
              onPressed: onLoginPressed,
              text: 'Login',
            ),
          ),
        ],
      ),
    );
  }
}
