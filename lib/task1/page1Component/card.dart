import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class n extends StatelessWidget {
  final String? head;
  final String? des;
  final String? imagep;

  n({this.imagep, this.des, this.head});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.lightGreen.shade50,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 15,right: 10,top: 15,bottom: 15),
        child: Row(
          children: [
            Expanded(
              child: DecoratedBox(
                decoration: BoxDecoration(

                  image: DecorationImage(
                    image: AssetImage(imagep!),
                    alignment: Alignment.centerRight,
                    fit: BoxFit.none,

                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      head!,
                      style: GoogleFonts.playfairDisplay(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.green,
                      ),
                      softWrap: true,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    SizedBox(
                      width: 165,
                      child: Text(
                        des!,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey.shade800,

                        ),
                        softWrap: true,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.green),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10), // Adjust the radius as needed
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: SizedBox(
                          width: 90,
                          child: Row(
                            children: [
                              Text(
                                'Watch now',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                width: 18, // Adjust the width and height for your desired circle size
                                height: 18,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white, // Set the background color to white
                                ),
                                child: Center(
                                  child: Icon(
                                    FontAwesomeIcons.play,
                                    color: Colors.green,
                                    size: 8,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );

    // TODO: implement build
    throw UnimplementedError();
  }
}
