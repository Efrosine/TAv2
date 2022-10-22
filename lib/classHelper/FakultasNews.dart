import 'package:flutter/cupertino.dart';

class FakultasNews extends StatelessWidget {
  final String title, image, artikel;

  const FakultasNews(
      {super.key,
      required this.title,
      required this.image,
      required this.artikel});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [Text(title), Image.asset(image), Text(artikel)],
    ));
  }
}
