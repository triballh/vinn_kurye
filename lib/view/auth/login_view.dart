import 'package:flutter/material.dart';
import '/widgets/common/app_bar_widget.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(text: 'Kayıt Ol'),
      body: const Center(child: Text('Login Form')),
    );
  }
}
