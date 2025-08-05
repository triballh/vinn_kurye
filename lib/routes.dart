import 'package:flutter/material.dart';
import 'view/auth/login_view.dart';
import 'view/auth/signup_view.dart';
import 'view/auth/onboarding_view.dart';
import 'view/shared/app_info_view.dart';

class Routes {
  static Map<String, WidgetBuilder> getRoutes() {
    return {
      '/': (context) => OnboardingView(),
      '/signup': (context) => SignUpView(),
      '/login': (context) => LoginView(),
      '/onboarding': (context) => OnboardingView(),
      '/app_info': (context) => AppInfoView(),
    };
  }
}
