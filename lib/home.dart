import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'Berita.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: news.length,
      itemBuilder: (context, index) {
        return itemCard(newb: news[index]);
      },
    ));
  }
}

class itemCard extends StatelessWidget {
  final Berita newb;
  const itemCard({Key? key, required this.newb}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 24),
        child: Stack(children: [
          Image.asset(newb.artikel),
          Positioned(
              bottom: -1,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 2, color: Colors.black)),
                child: Text(newb.tittle),
              ))
        ]),
      ),
    );
  }
}
