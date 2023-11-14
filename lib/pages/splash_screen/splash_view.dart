import 'dart:async';

import 'package:flutter/material.dart';
import 'package:news_app/pages/home/home_view.dart';

class SplashView extends StatefulWidget {
  static const String routName = "splash";

  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacementNamed(context, HomeView.routeName);
      },
    );
    super.initState();
  }

  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage("assets/images/splash.png "),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(child: Image.asset("assets/images/Splash_logo.png")),
      ),
    );
  }
}
