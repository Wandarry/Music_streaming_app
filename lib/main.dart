import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:miziki_app/view/welcome.dart';
import 'package:miziki_app/view/loginView.dart';

void main() {
  runApp(const MizikiApp());
}

class MizikiApp extends StatelessWidget {
  const MizikiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginView(),
    );
  }
}


