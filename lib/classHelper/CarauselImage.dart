import 'package:flutter/material.dart';

class CarauselImage extends StatelessWidget {
  final String title, image;

  const CarauselImage({super.key, required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Color.fromRGBO(0, 0, 0, .9), BlendMode.lighten))),
      child: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Color.fromRGBO(0, 0, 0, .6)),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
