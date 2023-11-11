import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FeelWidget extends StatelessWidget {
  final String? name;
  final IconData? feelIcon;
  final double? sWidth;

  FeelWidget({this.name, this.feelIcon, this.sWidth});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: sWidth,
          height: sWidth,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.lightGreen.shade300,
              borderRadius: BorderRadius.all(Radius.circular(sWidth! / 3)),
            ),
            child: Icon(
              feelIcon ?? Icons.error,
              size: sWidth! - sWidth! / 3,
              color: Colors.white,
            ), // Use feelIcon with a default fallback icon
          ),
        ),
        Text(name ?? "Default Name"), // Display the name with a default value
      ],
    );
  }
}
