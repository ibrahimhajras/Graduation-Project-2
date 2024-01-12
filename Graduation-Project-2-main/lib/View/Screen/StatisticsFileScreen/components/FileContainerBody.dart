import 'package:flutter/material.dart';

import 'FileDetailes.dart';

class FileContainerBody extends StatelessWidget {
  final String year,crop,city;
  const FileContainerBody({
    super.key, required this.year, required this.crop, required this.city,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FileDetails(textType: 'Crop Type : ', textDet: crop,),
        const Divider(),
        FileDetails(textType: 'Year : ', textDet: year),
        const Divider(),
        FileDetails(textType: 'City Name : ', textDet: city),
      ],
    );
  }
}