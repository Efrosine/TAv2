import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  final String image, name, nim, asal;
  final int nomor;

  const ProfileView(
      {super.key,
      required this.image,
      required this.name,
      required this.nim,
      required this.asal,
      required this.nomor});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      child: Row(
        children: [
          Image.asset(
            image,
            height: 100,
            // width: 75,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 24,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 80,margin: EdgeInsets.only(left: 24),
                child: Text('Anggota ' + nomor.toString(),
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ),
              SizedBox(height: 12,),
              Row(
                children: [
                  Container(
                    width: 40,
                    child: Text('Nama'),
                  ),
                  Container(width: 130, child: Text(name))
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 40,
                    child: Text('NIM'),
                  ),
                  Container(
                    width: 130,
                    child: Text(nim),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 40,
                    child: Text('Asal'),
                  ),
                  Container(width: 130, child: Text(asal))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
