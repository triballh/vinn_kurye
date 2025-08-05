import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'core/theme/app_theme.dart';
import '/routes.dart';
//  import 'firebase_options.dart';

Future<void> main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'VINN Kurye',
      theme: AppTheme.lightTheme, // core/theme/app_theme.dart
      initialRoute: '/',
      routes: Routes.getRoutes(), // routes.dart içeriği ile
      // localization
    );
  }
}

// --------------------------------------------------
// Ekleyeceğim altyapılar
// --------------------------------------------------
// 1. State Management (Provider örneği)
// MultiProvider(
//   providers: [
//     ChangeNotifierProvider(create: (_) => AuthProvider()),
//     ChangeNotifierProvider(create: (_) => ThemeProvider()),
//   ],
//   child: MyApp(),
// );
//
//
// 2. Dependency Injection (get_it örneği)
// final getIt = GetIt.instance;
// getIt.registerSingleton<ApiService>(ApiService());
//
//
// 3. Network Layer (Dio ile)
// final dio = Dio();
// dio.get('https://api.example.com/data');
//
//
// 4. Local Storage (SharedPreferences)
// final prefs = await SharedPreferences.getInstance();
// prefs.setString('token', '123');
//
//
// 5. Error Handling & Logging (Sentry)
// await SentryFlutter.init(
//   (options) => options.dsn = 'YOUR_DSN',
// );
//
//
// 6. Responsive Tasarım
// LayoutBuilder(
//   builder: (context, constraints) {
//     if (constraints.maxWidth > 600) {
//       return TabletLayout();
//     } else {
//       return MobileLayout();
//     }
//   },
// );
//
//
// 7. Theme Switching
// themeMode: ThemeMode.system,
// darkTheme: AppTheme.darkTheme,
//
//
// 8. Localization
// localizationsDelegates: [
//   GlobalMaterialLocalizations.delegate,
//   GlobalWidgetsLocalizations.delegate,
//   GlobalCupertinoLocalizations.delegate,
// ],
// supportedLocales: [
//   Locale('tr', ''),
//   Locale('en', ''),
// ],
// --------------------------------------------------
