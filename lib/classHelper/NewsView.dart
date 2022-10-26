import 'package:flutter/material.dart';

class NewsView extends StatelessWidget {
  final String title, iamge, artikel;

  const NewsView(
      {super.key,
      required this.title,
      required this.iamge,
      required this.artikel});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Maliki News'),
        backgroundColor: Colors.green,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.fromLTRB(24, 24, 24, 0),
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Image.asset(
            iamge,
            fit: BoxFit.fitWidth,
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            artikel,
            style: Theme.of(context).textTheme.bodyText1,
            softWrap: true,
            textAlign: TextAlign.justify,
          )
        ],
      ),
    );
  }
}
