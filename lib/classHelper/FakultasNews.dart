import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'NewsView.dart';

class FakultasNews extends StatelessWidget {
  final String title, image, artikel;

  const FakultasNews(
      {super.key,
      required this.title,
      required this.image,
      required this.artikel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
           Navigator.push(context, MaterialPageRoute(builder: (context) => NewsView(title: title, iamge: image, artikel: artikel)));
        },
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Image.asset(image),
                  SizedBox(
                    height: 6,
                  ),
                  Text('         ' + artikel,textAlign: TextAlign.justify,)
                ],
              ),
            ),
            Divider(
              height: 24,
              thickness: 1,
              color: Colors.grey[350],
            ),
          ],
        ));
  }
}
