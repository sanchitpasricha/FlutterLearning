import 'package:flutter/material.dart';
import '../constants.dart';

class cardContent extends StatelessWidget {
  cardContent({this.icon, this.label, this.colours});

  final IconData icon;
  final String label;
  final Color colours;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          color: colours,
          size: 90.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: kTextStyling,
        ),
      ],
    );
  }
}
