import 'package:bugarin/src/features/theme_manager/values_manager.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  static const String routeName = '/sign_in';

  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: AppPadding.p50,
          horizontal: AppPadding.p24,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'hmm',
                style: TextStyle(
                  fontSize: 35,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'KALO BINGUNG BISA TANYAKAN KE GM SAHTIA',
                style: TextStyle(
                  fontSize: 50,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'TERIMA KASIH BANYAK -SPR AAN',
                style: TextStyle(
                  fontSize: 35,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
