import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class nav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image(
            image: AssetImage(
              'assets/spa.png',
            ),
            height: 30,
            width: 30,
            fit: BoxFit.cover,
          ),
          Icon(
            FontAwesomeIcons.music,
            size: 22,
          ),
          Icon(
            FontAwesomeIcons.user,
            size: 22,
          ),
        ],
      ),
    );

    // TODO: implement build
    throw UnimplementedError();
  }
}
