import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'CustomStyle.dart';

class ProfileView extends StatelessWidget {
  final String image, name, nim, asal, linkin, twt, ig;
  final int nomor;

  const ProfileView(
      {super.key,
      required this.image,
      required this.name,
      required this.nim,
      required this.asal,
      required this.nomor,
      required this.linkin,
      required this.twt,
      required this.ig});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(image),
              radius: 40,
            ),
            SizedBox(
              width: 24,
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 0, 0, 12),
                  child: Text(
                    'Anggota ' + nomor.toString(),
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                Table(
                  columnWidths: <int, TableColumnWidth>{
                    0: FlexColumnWidth(1),
                    1: FlexColumnWidth(3)
                  },
                  children: [
                    TableRow(children: [
                      Container(
                        height: 18,
                        child: Text(
                          'Nama',
                          style: CustomStyle.styleProfile,
                        ),
                      ),
                      Text(name)
                    ]),
                    TableRow(children: [
                      Container(
                        height: 18,
                        child: Text(
                          'NIM',
                          style: CustomStyle.styleProfile,
                        ),
                      ),
                      Text(nim)
                    ]),
                    TableRow(children: [
                      Container(
                        height: 18,
                        child: Text(
                          'Asal',
                          style: CustomStyle.styleProfile,
                        ),
                      ),
                      Text(asal)
                    ]),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => _launchURLApp(ig),
                      child: CircleAvatar(
                          radius: 18,
                          backgroundImage:
                              AssetImage('assets/images/icon/ig.png')),
                    ),
                    GestureDetector(
                      onTap: () => _launchURLApp(linkin),
                      child: CircleAvatar(
                          radius: 18,
                          backgroundImage:
                              AssetImage('assets/images/icon/linkin.png')),
                    ),
                    GestureDetector(
                      onTap: () => _launchURLApp(twt),
                      child: CircleAvatar(
                          radius: 18,
                          backgroundImage:
                              AssetImage('assets/images/icon/twt.png')),
                    )
                  ],
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}

_launchURLApp(String s) async {
  var url = Uri.parse(s);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    (throw 'Could not launch $url');
  }
}
