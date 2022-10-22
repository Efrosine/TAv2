import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tugas_akhir_v2/ListAdapter/Kegiatan.dart';

class TabKegiatan extends StatelessWidget {
  const TabKegiatan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      Padding(
        padding: const EdgeInsets.all(24.0),
        child: Text(
          'KEGIATAN',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      ListView.builder(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemCount: pengumuman.length,
        itemBuilder: (context, index) {
          return ItemCard(pengu: pengumuman[index]);
        },
      )
    ]));
  }
}

class ItemCard extends StatelessWidget {
  final Kegiatan pengu;
  const ItemCard({Key? key, required this.pengu}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(pengu.title,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  SizedBox(height: 12,),
                  Image.asset(pengu.image),
                  SizedBox(height: 6,),
                  Text('         '+pengu.text)
                ],
              )),
          Divider(
            height: 24,
            thickness: 1,
            color: Colors.grey[350],
          ),
        ],
      ),
    );
  }
}
