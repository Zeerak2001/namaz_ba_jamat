import 'package:flutter/material.dart';
import 'package:namaz_ba_jamat/generics/text_fields/nbj_primary_textfield.dart';

import '../../../generics/buttons/primary_button.dart';

class SignupForm extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController repasswordController;
  final TextEditingController areaController;
  final TextEditingController nameController;
  final Function onSignupPressed;

  SignupForm({
    required this.formKey,
    required this.emailController,
    required this.areaController,
    required this.repasswordController,
    required this.nameController,
    required this.passwordController,
    required this.onSignupPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          NbjPrimaryTextfield(
            controller: nameController,
            labelText: 'Mosque Name',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter mosque name';
              }
              return null;
            },
          ),
          NbjPrimaryTextfield(
            controller: areaController,
            labelText: 'Mosque Area',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter mosque area';
              }
              return null;
            },
          ),
          NbjPrimaryTextfield(
            controller: emailController,
            labelText: 'Email',
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
            labelText: 'Password',
            obscureText: true,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your password';
              }
              return null;
            },
          ),
          NbjPrimaryTextfield(
            controller: repasswordController,
            labelText: 'Re-Password',
            obscureText: true,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please re-enter your password';
              }
              return null;
            },
          ),
          SizedBox(height: 20),
          SizedBox(
            width: 100,
            child: NbjPrimaryButton(
              onPressed: () {},
              text: 'Sign Up',
            ),
          ),
        ],
      ),
    );
  }
}
