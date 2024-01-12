import 'package:flutter/material.dart';
import 'package:gradproject2/Utils/Widget/NavBar.dart';
import '../../../Utils/Widget/LogoText.dart';
import '../../../Utils/Widget/drawer.dart';
import 'components/ReportBuilder.dart';

class ReportScreen extends StatelessWidget {
   const ReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const LogoText(),
      ),
      drawer: const CustomDrawer(),
      bottomNavigationBar: const NavBar(id: 'Report'),
      body: const ReportBuilder(),
    );
  }
}