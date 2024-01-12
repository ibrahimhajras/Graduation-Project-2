import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../Utils/Static/SizeConfig.dart';
import '../../../../controller/provider/report_provider.dart';

class ReportBuilder extends StatefulWidget {
  const ReportBuilder({
    super.key,
  });

  @override
  State<ReportBuilder> createState() => _ReportBuilderState();
}

class _ReportBuilderState extends State<ReportBuilder> {
  late Uri url;
  @override
  void initState() {
    Provider.of<ReportsProvider>(context,listen: false).fetchReports();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<ReportsProvider>(
      builder: (BuildContext context, value, Widget? child) => ListView.builder(
        itemCount: value.reports.length,
        itemBuilder: (context, index) => Container(
          width: getProportionateScreenWidth(375),
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(15),
              vertical: getProportionateScreenHeight(15)),
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(18),
              vertical: getProportionateScreenHeight(10)),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: const [BoxShadow(color: Colors.black54, blurRadius: 5)],
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text('${value.reports[index].Time} Report',style: const TextStyle(fontSize: 20),),
              SizedBox(
                height: getProportionateScreenHeight(15),
              ),
              InkWell(
                onTap: () async {
                  url= Uri.parse(value.reports[index].Url);
                  if (await canLaunchUrl(url)) {
                    await launchUrl(url);
                  }
                },
                child: const Text(
                  'Click here',
                  style: TextStyle(color: Colors.blue),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}