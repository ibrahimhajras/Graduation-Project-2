import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gradproject2/Utils/Static/route.dart';
import 'package:gradproject2/View/Screen/CropsScreen/CropsScreen.dart';
import 'package:gradproject2/View/Screen/ForumScreen/ForumScreen.dart';
import 'package:gradproject2/View/Screen/ReportScreen/report_screen.dart';
import 'package:gradproject2/View/Screen/StatisticsScreen/StatisticsScreen.dart';
import 'package:pandabar/pandabar.dart';
import '../Static/StaticColor.dart';

class NavBar extends StatefulWidget {
  final String id;
  const NavBar({super.key, required this.id});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return PandaBar(
      buttonData: [
        PandaBarButtonData(
            id: 'Crops',
            icon: Icons.dashboard,
            title: 'Crops'
        ),
        PandaBarButtonData(
            id: 'Statistics',
            icon: Icons.add_chart_outlined,
            title: 'Statistics'
        ),
        PandaBarButtonData(
            id: 'Messages',
            icon: Icons.message_outlined,
            title: 'Messages'
        ),
        PandaBarButtonData(
            id: 'Report',
            icon: Icons.add_chart_outlined,
            title: 'Report'
        ),
      ],
      backgroundColor: white,
      buttonSelectedColor: Colors.grey,
      fabColors: const [
        Color(0xff58E680),
        Color(0xff1DAB45),
      ],

      fabIcon: const Icon(Icons.home,color: white,),
      onChange: (id) {
        setState(() {
          if(id=='Statistics'){
            Get.to(() => StatisticsScreen());
          }
          else if(id=='Report'){
            Get.to(() =>ReportScreen());
          }
          else if(id=='Messages'){
            Get.to(() =>ForumScreen());
          }
          else if(id=='Crops'){
            Get.to(() =>CropsScreen());
          }
        });
      },
      onFabButtonPressed: () {
        Get.toNamed(AppRoute.home);
        setState(() {});
      },
    );
  }
}
