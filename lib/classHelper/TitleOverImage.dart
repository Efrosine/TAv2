import 'package:flutter/material.dart';

import 'NewsView.dart';

class TitleOverImage extends StatelessWidget {
  final String image, title,artikel;
  const TitleOverImage({required this.image, required this.title, required this.artikel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => NewsView(title: title, iamge: image, artikel: artikel)));
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
        child: Stack(
          clipBehavior: Clip.none,
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Image.asset(image),
            Positioned(
              bottom: title.length < 35 ? -15 : -20,
              right: 10,
              left: 10,
              // height: 100,
              child: Container(
                  margin: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.black),
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.all(3),
                  alignment: Alignment.center,
                  child: ConstrainedBox(
                    constraints: BoxConstraints(maxHeight: 80, minHeight: 15),
                    child: Text(
                      title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
