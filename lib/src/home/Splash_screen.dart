import 'package:appcontainer/src/home/HomePage.dart';
import 'package:flutter/material.dart';

class Musica extends StatefulWidget {
  const Musica({super.key});

  @override
  State<Musica> createState() => _MusicaState();
}

class _MusicaState extends State<Musica> {
  void initState() {
    super.initState();
    _navigatehome();
  }

  _navigatehome() async {
    await Future.delayed(Duration(seconds: 3), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    double hght = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.black),
        body: Scaffold(
            body: SafeArea(
                child: Stack(
          children: [
            Container(
                height: hght,
                width: wid,
                decoration: BoxDecoration(color: Colors.black),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/logo.jpg', fit: BoxFit.contain),
                    Text(
                      'Musica',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 45,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                )),
            // Container(
            //   height: wid * 0.1,
            //   width: wid * 0.1,
            //   margin: EdgeInsets.only(top: hght * 0.46, left: wid * 0.45),
            //   child: CircularProgressIndicator(),
            // )
          ],
        ))));
  }
}
