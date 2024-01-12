import 'package:flutter/material.dart';

class ShowDetails extends StatelessWidget {
  final String textType;
  final String textDet;
  const ShowDetails({
    super.key, required this.textType, required this.textDet,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          textType,
          style: const TextStyle(
              fontWeight: FontWeight.w600, fontSize: 18),
        ),
        Text(
          textDet,
          style: const TextStyle(
              fontWeight: FontWeight.w600, fontSize: 18),
        ),
      ],
    );
  }
}
