// lib/view/auth/onboarding_view.dart
import 'package:flutter/material.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(child: Image.asset('assets/images/backgrounds/icon_16_9_.png', fit: BoxFit.cover)),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 100.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _authButton(text: 'Giriş Yap', onPressed: () => Navigator.pushNamed(context, '/login')),
                  const SizedBox(width: 16), // Yatay boşluk için width kullan
                  _authButton(text: 'Kayıt Ol', onPressed: () => Navigator.pushNamed(context, '/signup')),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, '/app_info'),
        tooltip: 'Bilgi',
        child: const Icon(Icons.info_outline),
      ),
    );
  }

  // Sadece bu dosyada kullanılacak özel buton widget'ı
  Widget _authButton({String? text, VoidCallback? onPressed}) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        textStyle: const TextStyle(fontSize: 16),
      ),
      child: Text(text ?? "Button"),
    );
  }
}
