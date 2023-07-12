import 'dart:async';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_sample/common/widgets/submit_button.dart';
import 'package:flutter_ui_sample/common/widgets/text_input.dart';
import 'package:flutter_ui_sample/core/app_asset.dart';

class LoginScreen extends StatefulWidget {
  static const String route = "user-screen";

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController usernameController = TextEditingController(),
      passwordController = TextEditingController();
  final FocusNode usernameFocusNode = FocusNode(),
      passwordFocusNode = FocusNode();

  Timer? _debouncedTypeTimer;

  bool openPassword = false, loading = false;
  AlignmentGeometry _radialAlignment = Alignment.topCenter;

  bool get allowToSubmit =>
      usernameController.text.trim().isNotEmpty &&
      passwordController.text.trim().isNotEmpty;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: AnimatedContainer(
          duration: Duration(seconds: 1),
          decoration: BoxDecoration(
            gradient: RadialGradient(
              center: _radialAlignment,
              transform: GradientRotation(0),
              radius: 2.2,
              colors: [Color(0xFF1F4247), Color(0xFF0D1D23), Color(0xFF09141A)],
            ),
          ),
          child: ListView(
            padding: const EdgeInsets.all(24.0),
            children: <Widget>[
              const SizedBox(height: 8),
              if (Navigator.canPop(context))
                TextButton(
                  style: TextButton.styleFrom(side: BorderSide.none),
                  onPressed: () => Navigator.pop(context),
                  child: const Row(
                    children: [
                      Icon(Icons.arrow_back_ios, color: Colors.white, size: 20),
                      Text('Back'),
                    ],
                  ),
                ),
              SizedBox(height: 100, child: Image.asset(AppAsset.appLogo)),
              const SizedBox(height: 40),
              Text(
                'Login',
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              TextInput(
                hint: 'Enter Username/Email',
                controller: usernameController,
                focusNode: usernameFocusNode,
                type: TextInputType.emailAddress,
                onChanged: _onChangeHandler,
              ),
              const SizedBox(height: 16),
              TextInput(
                hint: 'Enter Password',
                controller: passwordController,
                focusNode: passwordFocusNode,
                onChanged: _onChangeHandler,
                maxLine: 1,
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() => openPassword = !openPassword);
                  },
                  icon: openPassword
                      ? Icon(
                          Icons.remove_red_eye_outlined,
                          color: Colors.amber.shade200,
                          fill: .1,
                        )
                      : Image.asset(AppAsset.hidePassword, scale: 2),
                ),
                obscureText: !openPassword,
              ),
              const SizedBox(height: 24),
              Builder(
                builder: (BuildContext context) {
                  return SubmitButton(
                    title: 'Login',
                    loading: loading,
                    onPressed: !allowToSubmit || loading
                        ? null
                        : () async {
                            FocusScope.of(context).unfocus();
                            setState(() {
                              loading = true;
                              _radialAlignment = Alignment.bottomCenter;
                            });
                            // Simulate awaiting process
                            await Future<void>.delayed(
                              const Duration(seconds: 2),
                            );
                            setState(() {
                              loading = false;
                              _radialAlignment = Alignment.topCenter;
                            });
                          },
                  );
                },
              ),
              const SizedBox(height: 50),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(text: "No account?"),
                    TextSpan(
                      text: ' Register here',
                      recognizer: TapGestureRecognizer()..onTap = () {},
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _onChangeHandler(String value) {
    const Duration duration = Duration(milliseconds: 700);

    if (_debouncedTypeTimer != null) {
      _debouncedTypeTimer!.cancel(); // clear timer
    }

    _debouncedTypeTimer = Timer(duration, () {
      setState(() {
        /* rebuild validation form status */
        if (usernameController.text.isNotEmpty &&
            passwordController.text.isNotEmpty) {
          _radialAlignment = Alignment.center;
        }
      });
    });
  }
}
