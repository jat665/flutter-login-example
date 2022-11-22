import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kripton/app_config.dart';
import 'package:kripton/constants.dart';

import 'bloc/login_bloc.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  static const route = '/login';

  @override
  Widget build(BuildContext context) {
    var usernameController = TextEditingController();
    var passwordController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.red,
      bottomSheet: Container(
        color: Colors.red,
        child: Row(
          children: [
            const Spacer(),
            TextButton(
              onPressed: () => {},
              child: Text(
                AppLocalizations.of(context)!.loginForgotPassword,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: BlocProvider(
            create: (context) => LoginBloc(),
            child: Column(
              children: [
                const LogoSection(),
                LoginForm(
                  usernameController: usernameController,
                  passwordController: passwordController,
                ),
                TextButton(
                  onPressed: () => {},
                  child: Text(
                    AppLocalizations.of(context)!.loginSignUp,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 60),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
    required this.usernameController,
    required this.passwordController,
  }) : super(key: key);

  final TextEditingController usernameController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          return Column(
            children: [
              InputField(
                prefixIcon: CupertinoIcons.person_alt_circle,
                hintText: AppLocalizations.of(context)!.loginUsernameHint,
                controller: usernameController,
              ),
              const SizedBox(height: 16),
              InputField(
                key: const Key(WidgetKeys.passwordTextField),
                prefixIcon: CupertinoIcons.lock_circle,
                suffixIcon: IconButton(
                  color: Colors.white,
                  icon: Icon(state.isPasswordVisible ? CupertinoIcons.eye_slash_fill : CupertinoIcons.eye_fill),
                  onPressed: () => context.read<LoginBloc>().add(LoginTogglePasswordVisibilityEvent()),
                ),
                hintText: AppLocalizations.of(context)!.loginPasswordHint,
                controller: passwordController,
                obscureText: !state.isPasswordVisible,
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: const StadiumBorder(),
                  ),
                  child: Text(AppLocalizations.of(context)!.labelLogin),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class LogoSection extends StatelessWidget {
  const LogoSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 80),
        Container(
          padding: const EdgeInsets.only(left: 32, right: 32),
          child: Image.asset(AssetsImages.logoWhite),
        ),
        const SizedBox(height: 16),
        Text(
          AppConfig.of(context).appName,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 60),
      ],
    );
  }
}

class InputField extends StatelessWidget {
  static const borderRadius = BorderRadius.all(Radius.circular(25));
  static const _hintColor = Colors.white70;
  static const _textFieldColor = Colors.white;
  static const _prefixSpace = 8.0;

  final IconData prefixIcon;
  final String hintText;
  final IconButton? suffixIcon;
  final bool obscureText;
  final TextEditingController? controller;

  const InputField({
    Key? key,
    required this.prefixIcon,
    required this.hintText,
    this.suffixIcon,
    this.obscureText = false,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const RoundedBoxDecoration(
        backgroundColor: Colors.black12,
      ),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        cursorColor: _textFieldColor,
        style: const TextStyle(
          color: _textFieldColor,
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          prefix: const SizedBox(width: _prefixSpace),
          prefixIcon: PrefixIcon(prefixIcon),
          suffixIcon: suffixIcon,
          hintStyle: const TextStyle(color: _hintColor),
        ),
      ),
    );
  }
}

class PrefixIcon extends StatelessWidget {
  const PrefixIcon(this.icon, {Key? key}) : super(key: key);

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const RoundedBoxDecoration(
        backgroundColor: Colors.black,
      ),
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}

class RoundedBoxDecoration extends BoxDecoration {
  final Color backgroundColor;

  const RoundedBoxDecoration({
    required this.backgroundColor,
  }) : super(
          color: backgroundColor,
          borderRadius: InputField.borderRadius,
        );
}
