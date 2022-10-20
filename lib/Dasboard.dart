import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tugas_akhir_v2/Tab_Terbaru.dart';
import 'package:tugas_akhir_v2/Profile.dart';
import 'package:tugas_akhir_v2/Tab_Pengumuman.dart';

import 'Tab_Kegiatan.dart';

class Dasboard extends StatelessWidget {
  const Dasboard({super.key});

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
                child: Text('FAKULTAS',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
              ),
            ]),
          ),
          body: TabBarView(
            children: [TabTerbaru(), TabPengumuman(), TabKegiatan(), TabPengumuman()],
          )),
    );
  }
}
