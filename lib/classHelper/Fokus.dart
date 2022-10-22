import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Fokus extends StatelessWidget {
  final String image, title;

  const Fokus({super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
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
