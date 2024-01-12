import 'package:flutter/material.dart';
import 'package:gradproject2/View/Screen/ForgetPassword/ForgetPassword.dart';
import 'package:gradproject2/View/Screen/ForumScreen/components/AddNewPost.dart';
import 'package:gradproject2/View/Screen/HomeScreen/HomeScreen.dart';
import '../../View/Screen/LogInScreen/LoginScreen.dart';
import '../../View/Screen/SignUpScreen/SignUpScreen.dart';


Map<String, Widget Function(BuildContext)> route = {
  AppRoute.login: (context) => const LoginScreen(),
  AppRoute.signup: (context) => SignUpScreen(),
  AppRoute.forget: (context) => const ForgetPassword(),
  AppRoute.home: (context) => const HomeScreen(),
  AppRoute.addnewpost: (context) => const AddNewPost(),
  // AppRoute.comments: (context) => const Comments(),
};
class AppRoute {
  static const String login = "/LoginScreen";
  static const String signup="/SignUpScreen";
  static const String forget = "/ForgetPassword";
  static const String home = "/HomeScreen";
  static const String addnewpost = "/AddNewPost";
  // static const String comments = "/Comments";
}