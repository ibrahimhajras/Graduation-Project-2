// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Utils/Static/Crud.dart';
import '../../Utils/Static/links.dart';
import '../../Utils/Static/route.dart';
final Crud _crud = Crud();
singUp(BuildContext context,TextEditingController name,TextEditingController email, TextEditingController pass ) async {
  try {
    var response = await _crud.postRequest(linkSignup, {
      "User_Name": name.text,
      "Email": email.text,
      "Password": pass.text,
    });
    if (response['status'] == "s") {
      Get.toNamed(AppRoute.login);
    } else if (response['status'] == "f") {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Sign Up Error'),
          content: Text(response['message']),
          actions: [
            TextButton(
              child: Text('OK'),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
      );
    }
  } catch (e) {
    print("Error occurred: $e");
  }
}