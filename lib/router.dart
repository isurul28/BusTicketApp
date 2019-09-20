import 'package:bus_app/loginscreen.dart';
import 'package:bus_app/routing_constant.dart';
import 'package:flutter/material.dart';

Route <dynamic> generateRoute(RouteSettings settings)
{
  switch (settings.name) {
    case LoginViewRoute :
      return MaterialPageRoute(builder: (context) => LoginScreen3());
      break;
    default:
      return MaterialPageRoute(builder: (context) => LoginScreen3());
  }
}