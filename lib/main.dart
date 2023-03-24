import 'package:flutter/material.dart';

import '../pages/login_screen.dart';
import '../pages/welcome_screen.dart';
import '../widgets/navbar.dart';
import '../consts/colors.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        colorScheme:
            ColorScheme.light().copyWith(primary: AppColors.primColor)),
    home: WelcomeScreen(),
    routes: {
      '/welcomescr': (context) => WelcomeScreen(),
      '/signinscr': (context) => LoginPage(),
      '/signup': (context) => LoginPage(),
      '/navbar': (context) => NavBarWidget(),
    },
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) => Scaffold();
}
