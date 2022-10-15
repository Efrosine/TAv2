
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('OUT TEAM'),
          leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back),
      ),backgroundColor: Colors.green,),

      body: Column(
        children: [
          Row(
            children: [
              Container(
                height: 200,
                width: 200,
                margin: const EdgeInsets.all(24),
                child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/PasFoto.png"),
                    backgroundColor: Colors.white),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 100,
                    child: Text('Anggota 1'),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 100,
                        child: Text('Nama'),
                      ),
                      Container(width: 300, child: Text('Fajar Triatmojo'))
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 100,
                        child: Text('NIM'),
                      ),
                      Container(width: 300, child: Text('220605110152'),)
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 100,
                        child: Text('Asal'),
                      ),
                      Container(width: 300, child: Text('Malang'))
                    ],
                  )
                ],
              )
            ],
          ),Row(
            children: [
              Container(
                height: 200,
                width: 200,
                margin: const EdgeInsets.all(24),
                child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/PasFoto.png"),
                    backgroundColor: Colors.white),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 100,
                    child: Text('Anggota 2'),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 100,
                        child: Text('Nama'),
                      ),
                      Container(width: 300, child: Text('Fajar Triatmojo'))
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 100,
                        child: Text('NIM'),
                      ),
                      Container(width: 300, child: Text('220605110152'),)
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 100,
                        child: Text('Asal'),
                      ),
                      Container(width: 300, child: Text('Malang'))
                    ],
                  )
                ],
              )
            ],
          ),Row(
            children: [
              Container(
                height: 200,
                width: 200,
                margin: const EdgeInsets.all(24),
                child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/PasFoto.png"),
                    backgroundColor: Colors.white),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 100,
                    child: Text('Anggota 3'),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 100,
                        child: Text('Nama'),
                      ),
                      Container(width: 300, child: Text('Fajar Triatmojo'))
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 100,
                        child: Text('NIM'),
                      ),
                      Container(width: 300, child: Text('220605110152'),)
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 100,
                        child: Text('Asal'),
                      ),
                      Container(width: 300, child: Text('Malang'))
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
