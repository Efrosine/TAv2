import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'Dasboard.dart';
import 'Tab_Terbaru.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 244, 248, 243),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 360,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/BG.png'),
                      fit: BoxFit.fill)),
              child: Stack(children: [
                Positioned(
                    left: 14,
                    top: 93,
                    width: 80,
                    height: 90,
                    child: ColorFiltered(
                      colorFilter: ColorFilter.mode(
                          Color.fromRGBO(72, 167, 11, 1), BlendMode.color),
                      child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/vectorB.png')))),
                    )),
                Positioned(
                    left: 90,
                    top: 50,
                    width: 50,
                    height: 46,
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/vectorB.png'))),
                    )),
                Positioned(
                    child: Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Center(
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 48,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ))
              ]),
            ),
            Padding(
              padding: EdgeInsets.all(24),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromRGBO(72, 167, 11, .1),
                            blurRadius: 20,
                            offset: Offset(1, 1.5))
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom:
                                      BorderSide(color: Colors.grey.shade100))),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'NIM',
                                hintStyle: TextStyle(color: Colors.grey[400])),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(8),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Pasword',
                                hintStyle: TextStyle(color: Colors.grey[400])),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Dasboard(),));},
                    child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(colors: [
                              Color.fromRGBO(72, 167, 11, .5),
                              Color.fromRGBO(72, 167, 11, .6),
                            ])),
                        child: Center(
                          child: Text('Login',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
