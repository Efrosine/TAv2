import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:tugas_akhir_v2/ListAdapter/Terbaru.dart';
import 'package:tugas_akhir_v2/Profile.dart';
import 'package:tugas_akhir_v2/classHelper/CarauselImage.dart';
import 'package:tugas_akhir_v2/classHelper/Fokus.dart';
import 'package:tugas_akhir_v2/classHelper/TitleOverImage.dart';

class TabTerbaru extends StatelessWidget {
  const TabTerbaru({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CarouselSlider.builder(
            options: CarouselOptions(
                height: 200, autoPlay: true,autoPlayAnimationDuration: Duration(milliseconds: 350), viewportFraction: 1),
            itemCount: terbaru.length,
            itemBuilder: (context, index, realIndex) => CarauselImage(
                title: terbaru[index].title, image: terbaru[index].image,artikel: terbaru[index].artikel),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 12,
                ),
                Text(
                  'FOKUS',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemCount: terbaru.length,
                  itemBuilder: (context, index) => Fokus(
                      image: terbaru[index].image, title: terbaru[index].title,artikel: terbaru[index].artikel),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemCount: terbaru.length,
                  itemBuilder: (context, index) => TitleOverImage(
                      image: terbaru[index].image, title: terbaru[index].title,artikel: terbaru[index].artikel,),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
