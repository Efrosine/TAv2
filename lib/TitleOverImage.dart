import 'package:flutter/material.dart';

class TitleOverImage extends StatelessWidget {
  final String image, title;
  const TitleOverImage({required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(alignment: AlignmentDirectional.bottomCenter, children: [
        Column(
          children: [
            Image.asset(image),SizedBox(height: 10,)
          ],
        ),
        Positioned(
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 2, color: Colors.black)),
              child: Text(
                title,
                textAlign: TextAlign.center,
              ),
            ))
      ]),
    );
  }
}
