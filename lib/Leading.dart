import 'package:flutter/material.dart';
import 'package:tugas_akhir_v2/Dashboard.dart';

class Leading extends StatelessWidget {
  const Leading({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: [
          Expanded(
              child: Image.asset(
            'assets/images/uin.png',
            fit: BoxFit.fitWidth,
          )),
          Container(
            margin: EdgeInsets.all(24),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Dashboard(),
                      ));
                },
                child: Text('Login')),
          )
        ],
      ),
    ));
  }
}
