import 'package:bugarin/src/features/authentication/screens/sign_in_screen.dart';
import 'package:bugarin/src/features/theme_manager/theme_data_manager.dart';
import 'package:flutter/material.dart';

class AppScreen extends StatefulWidget {
  const AppScreen({
    super.key,
  });

  @override
  State<AppScreen> createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bugarin',
      theme: getApplicationThemeData(),
      home: const SignInScreen(),
      routes: {
        SignInScreen.routeName: (context) => const SignInScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
