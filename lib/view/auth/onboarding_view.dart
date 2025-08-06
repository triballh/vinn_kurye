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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _authButton(text: 'Giriş Yap', onPressed: () => Navigator.pushNamed(context, '/login')),
                  _authButton(text: 'Kayıt Ol', onPressed: () => Navigator.pushNamed(context, '/signup')),
                ],
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Beklemek yok, VINN var',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromARGB(255, 242, 242, 242),
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const Text(
                    '\n Her kurye bir kahraman, her paket bir macera...',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromARGB(255, 203, 203, 203),
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, '/app_info'),
        tooltip: 'Bilgi',
        backgroundColor: const Color.fromARGB(255, 0, 54, 90),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: const Icon(Icons.info_outline),
      ),
    );
  }

  // Sadece bu dosyada kullanılacak özel buton widget'ı
  Widget _authButton({String? text, VoidCallback? onPressed}) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 50),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        backgroundColor: const Color.fromARGB(255, 0, 78, 130),
        foregroundColor: Colors.white,
        textStyle: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
        elevation: 5,
      ),
      child: Text(text ?? "Button"),
    );
  }
}
