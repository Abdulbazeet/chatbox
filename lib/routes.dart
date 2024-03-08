import 'package:chatbox/features/auth/screens/authScreen.dart';
import 'package:chatbox/features/auth/screens/logInSreen.dart';
import 'package:chatbox/features/auth/screens/signUp.dart';
import 'package:chatbox/features/chatSCreen/screens/chatSCreen.dart';
import 'package:chatbox/screens/mainPage.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AuthScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const AuthScreen(),
      );
    case LogInScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const LogInScreen(),
      );

    case SignUpScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const SignUpScreen(),
      );
    case MainPage.routeName:
      return MaterialPageRoute(
        builder: (context) => const MainPage(),
      );
    case ChatSCreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const ChatSCreen(),
      );

    default:
      return MaterialPageRoute(
        builder: (context) => Scaffold(),
      );
  }
}
