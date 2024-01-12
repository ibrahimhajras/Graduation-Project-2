import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gradproject2/Utils/Widget/drawer.dart';
import 'package:gradproject2/View/Screen/StatisticsScreen/components/StatisticsBody.dart';
import '../../../Utils/Widget/LogoText.dart';
import '../../../Utils/Widget/NavBar.dart';

class StatisticsScreen extends StatefulWidget {
  const StatisticsScreen({super.key});

  @override
  State<StatisticsScreen> createState() => _StatisticsScreenState();
}

class _StatisticsScreenState extends State<StatisticsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const LogoText(),
      ),
      drawer: const CustomDrawer(),
      bottomNavigationBar: const NavBar(id: 'Statistics'),
      body: const StatisticsBody(),
    );
  }
}