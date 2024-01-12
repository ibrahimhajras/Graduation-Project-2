import 'package:flutter/material.dart';
import 'package:gradproject2/Utils/Widget/LogoText.dart';
import 'package:gradproject2/View/Screen/StatisticsFileScreen/components/FileContainer.dart';
import 'package:gradproject2/controller/provider/statistics_provider.dart';
import 'package:provider/provider.dart';
import '../../../Utils/Static/SizeConfig.dart';
import '../../../Utils/Widget/CustomButton.dart';
import '../../../Utils/Widget/CustomDropDown.dart';
import '../../../Utils/Widget/CustomRadioButton.dart';
import '../../../models/dropdown_model.dart';

class StatisticsFileScreen extends StatefulWidget {
  final String year, crop, city;

  const StatisticsFileScreen(
      {super.key, required this.year, required this.crop, required this.city});

  @override
  State<StatisticsFileScreen> createState() => _StatisticsFileScreenState();
}

class _StatisticsFileScreenState extends State<StatisticsFileScreen> {
  @override
  void initState() {
    Provider.of<StatisticsProvider>(context, listen: false)
        .fetchStatistics2(widget.year, widget.crop, widget.city, gender);
    super.initState();
  }

  late Uri url;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const LogoText(),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(10),
            vertical: getProportionateScreenHeight(25)),
        child: Column(
          children: [
            FileContainer(
              year: widget.year,
              crop: widget.crop,
              city: widget.city,
            ),
            SizedBox(height: getProportionateScreenHeight(35)),
            Consumer<StatisticsProvider>(
                builder: (BuildContext context, StatisticsProvider value,
                        Widget? child) =>
                    CustomButton(
                        text: 'Download File',
                        onTap: () async {
                          // url = Uri.parse(value.statistic2[0].Url);
                          // if (await canLaunchUrl(url)) {
                          //   await launchUrl(url);
                          // }
                          print(value.statistic2[0].Url);
                        })),
            SizedBox(height: getProportionateScreenHeight(35)),
            CustomDropDown(
              selectedValue: dropdownlist[0].value,
              menuItems: dropdownlist[0].item,
              func: (String? s) {},
            ),
            SizedBox(height: getProportionateScreenHeight(25)),
            CustomDropDown(
              selectedValue: dropdownlist[1].value,
              menuItems: dropdownlist[1].item,
              func: (String? s) {},
            ),
            SizedBox(height: getProportionateScreenHeight(25)),
            CustomDropDown(
              selectedValue: dropdownlist[2].value,
              menuItems: dropdownlist[2].item,
              func: (String? s) {},
            ),
            SizedBox(height: getProportionateScreenHeight(15)),
            const CustomRadioButton(),
            const Spacer(),
            CustomButton(text: 'Files', onTap: () {}),
          ],
        ),
      ),
    );
  }
}
