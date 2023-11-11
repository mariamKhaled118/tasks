import 'package:flutter/material.dart';

class PageBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final double widthOfPage = constraints.maxWidth;
        double spaces = widthOfPage / 20;

        return SizedBox(
          width: widthOfPage,
          child: Row(
            children: [
              SizedBox(width: spaces),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.menu,
                  size: spaces * 2,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: spaces * 4.8),
                //size: spaces * 3,
                child: SizedBox(
                  width: spaces * 3,
                  height: spaces * 3,
                  child: const Image(
                    image: AssetImage('assets/spa.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: spaces * 2,
                height: spaces * 2,
                decoration:
                    BoxDecoration(shape: BoxShape.circle,),
                clipBehavior: Clip.antiAlias,
                child: Image(
                  image: AssetImage(
                    'assets/user.png',
                  ),
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
