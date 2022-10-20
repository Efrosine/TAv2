import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tugas_akhir_v2/Dashboard.dart';
import 'package:tugas_akhir_v2/Profile.dart';
import 'package:tugas_akhir_v2/dasv3.dart';

import 'home.dart';

class Dasboardv2 extends StatelessWidget {
  const Dasboardv2({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            title: Text('Maliki News'),
            backgroundColor: Colors.green,
            actions: [
              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Profile(),
                        ));
                  },
                  icon: Icon(
                    Icons.person,
                    color: Colors.white,
                  ))
            ],
            bottom: TabBar(indicatorColor: Colors.white,isScrollable: true, labelColor: Colors.green, tabs: [
              Tab(
                child: Text('TERBARU',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
              ),
              Tab(
                child: Text('PENGUMUMAN',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
              ),
              Tab(
                child: Text('KEGIATAN',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
              ),
              Tab(
                child: Text('INFORMATIKA',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
              ),
            ]),
          ),
          body: TabBarView(
            children: [Dashboard(), dasv3(), Home(), dasv3()],
          )),
    );
  }
}
