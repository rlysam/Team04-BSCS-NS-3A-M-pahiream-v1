import 'package:flutter/material.dart';
import 'package:pahiream_frontend/main.dart';
import 'package:pahiream_frontend/screens/Landing/landing_screen.dart';
import 'package:pahiream_frontend/screens/Login/login_screen.dart';
import 'package:pahiream_frontend/screens/Signup/signup_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const LandingPage());
      // case '/':
      //   return MaterialPageRoute(builder: (_) => const LoginPage());
      case '/loginPage':
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case '/signUpPage':
        return MaterialPageRoute(builder: (_) => const SignupPage());
      // ! sam ganito yung sa Landing page... pass _futureUser as argument
      case '/signLandingPage':
        // Validation of correct data type
        if (args is String) {
          return MaterialPageRoute(builder: (_) => const LandingPage());
        }
        // If args is not of the correct type, return an error page.
        // You can also throw an exception while in development.
        return _errorRoute();
      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
