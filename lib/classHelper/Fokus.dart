import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tugas_akhir_v2/classHelper/NewsView.dart';

class Fokus extends StatelessWidget {
  final String image, title,artikel;

  const Fokus({super.key, required this.image, required this.title, required this.artikel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => NewsView(title: title, iamge: image, artikel: artikel),));
      },
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox.square(
                dimension: 100,
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 12),
              Expanded(child: Text(title,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),))
            ],
          ),
          Divider(height: 20,thickness:1,color: Colors.grey[350],),
        ],
      ),
    );
  }
}
