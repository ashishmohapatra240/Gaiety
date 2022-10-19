import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gaiety/screens/signup_screen.dart';


class splashScreen extends StatelessWidget {
    static String id = "SplashScreen";
  const splashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
    splash: 'images/logo.png', 
    splashIconSize:200, 
    nextScreen: LoginPage(),    
    );

  }
}