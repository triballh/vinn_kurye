// lib/view/auth/onboarding_view.dart
import 'package:flutter/material.dart';
import '../../widgets/common/app_bar_widget.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Onboarding Content', style: TextStyle(fontSize: 24)),
            const SizedBox(height: 32),
            _authButton(
              text: 'Giriş Yap',
              onPressed: () => Navigator.pushNamed(context, '/login'),
            ),
            const SizedBox(height: 16),
            _authButton(
              text: 'Kayıt Ol',
              onPressed: () => Navigator.pushNamed(context, '/signup'),
            ),
          ], // children
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, '/app_info'),
        tooltip: 'Bilgi',
        child: const Icon(Icons.info_outline),
      ),
    );
  }

  // Sadece bu dosyada kullanılacak özel buton widget'ı
  static Widget _authButton({String? text, VoidCallback? onPressed}) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
        textStyle: const TextStyle(fontSize: 16),
      ),
      child: Text(text ?? "Button"),
    );
  }
}
