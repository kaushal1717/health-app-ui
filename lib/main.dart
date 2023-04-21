import 'package:flutter/material.dart';

import 'pages/Login : Signup/login_screen.dart';
import 'pages/Login : Signup/welcome_screen.dart';
import '../widgets/navbar.dart';
import '../consts/colors.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        colorScheme:
            const ColorScheme.light().copyWith(primary: AppColors.primColor)),
    home: const NavBarWidget(),
    routes: {
      '/welcomescr': (context) => const WelcomeScreen(),
      '/signinscr': (context) => const LoginPage(),
      '/signup': (context) => const LoginPage(),
      '/navbar': (context) => const NavBarWidget(),
    },
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) => const Scaffold();
}
