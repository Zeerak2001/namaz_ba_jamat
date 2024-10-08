import 'package:flutter/material.dart';
import 'package:namaz_ba_jamat/generics/constants/theme_colors.dart';
import '../../../generics/constants/font_sizes.dart';
import 'admin_login_form.dart';
import 'admin_signup_form.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _areaController = TextEditingController();
  final TextEditingController _repasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _isLogin = true;

  void _handleLogin() {
    if (_formKey.currentState!.validate()) {
      String email = _emailController.text;
      String password = _passwordController.text;

      print('Email: $email, Password: $password');
    } else {
      print('Form is invalid');
    }
  }

  void _handleSignup() {
    if (_formKey.currentState!.validate()) {
      print('User registered');
    } else {
      print('Form is invalid');
    }
  }

  void _handleToggle() {
    setState(() {
      _isLogin = !_isLogin;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(left: 300.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Welcome!',
                          style: FontSizes.size25Bold(
                            color: ThemeColors.kThemeColor,
                          ),
                        ),
                        Text(
                          _isLogin
                              ? 'Sign in to your Account'
                              : 'Create an Account',
                          style: FontSizes.size16Regular(
                            color: ThemeColors.kThemeColor,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20.0),
                    ToggleButtons(
                      isSelected: [_isLogin, !_isLogin],
                      onPressed: (index) {
                        _handleToggle();
                      },
                      borderRadius: BorderRadius.circular(10.0),
                      color: ThemeColors.kThemeColor.withOpacity(0.5),
                      selectedColor: Colors.white,
                      fillColor: ThemeColors.kThemeColor,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30,
                          ),
                          child: Text(
                            'Login',
                            style: TextStyle(
                              color: _isLogin
                                  ? Colors.white
                                  : ThemeColors.kThemeColor,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                              color: !_isLogin
                                  ? Colors.white
                                  : ThemeColors.kThemeColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20.0),
                    _isLogin
                        ? LoginForm(
                            formKey: _formKey,
                            emailController: _emailController,
                            passwordController: _passwordController,
                            onLoginPressed: _handleLogin,
                          )
                        : SignupForm(
                            formKey: _formKey,
                            emailController: _emailController,
                            passwordController: _passwordController,
                            onSignupPressed: _handleSignup,
                            areaController: _areaController,
                            repasswordController: _repasswordController,
                            nameController: _nameController,
                          ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 10.0),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 80),
                child: Image.asset(
                  'images/kaaba.png',
                  width: 600,
                  height: 600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
