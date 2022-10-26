import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tugas_akhir_v2/ListAdapter/Fakultas.dart';
import 'package:tugas_akhir_v2/ListAdapter/Terbaru.dart';
import 'package:tugas_akhir_v2/classHelper/FakultasNews.dart';

class TabFakultas extends StatelessWidget {
  const TabFakultas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
          child: Text(
            'TEKNIK INFORMATIKA',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: ScrollPhysics(),
          itemCount: fakultas.length,
          itemBuilder: (context, index) => FakultasNews(
              title: fakultas[index].title,
              image: fakultas[index].image,
              artikel: fakultas[index].artikel),
        )
      ],
    ));
  }
}
