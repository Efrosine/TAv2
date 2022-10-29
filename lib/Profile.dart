import 'package:flutter/material.dart';
import 'package:tugas_akhir_v2/ListAdapter/DataProfile.dart';
import 'package:tugas_akhir_v2/classHelper/ProfileView.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('OUR TEAM'),
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back),
          ),
          backgroundColor: Colors.green,
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
              child: ListView.builder(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemCount: dataProfile.length,
                itemBuilder: (context, index) => ProfileView(
                  image: dataProfile[index].image,
                  name: dataProfile[index].nama,
                  nim: dataProfile[index].nim,
                  asal: dataProfile[index].asal,
                  nomor: index + 1,
                  ig: dataProfile[index].ig,
                  linkin: dataProfile[index].linkin,
                  twt: dataProfile[index].twt,
                ),
              ),
            )
          ],
        ));
  }
}
