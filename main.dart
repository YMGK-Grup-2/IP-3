import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TEST',
      theme: ThemeData(
        primaryColor: Color(0xfff00045),
        accentColor: Color(0xff25D355),
      ),
      home: Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.red[400],
centerTitle:true,
        ),
    body:Center(
    child: Text(
    IP3([
    false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,
    false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,
    false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,
    false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,
    false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,
    false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,
    false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,
    false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,
    false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,
    false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,
    false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,
    false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,
    false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,
    false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,
    false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,
    false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,
    false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,
    false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,
    false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,
    false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,
    false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,
    false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,
    false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,
    false, true,true,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,false, true,false,
    ], 111999999),
    ),
    ),
    ),
    );
  }

String  IP3(List<bool> S, double T) {
    List<bool> X = bitUret(T);
   List<bool>K= xorlama(X, S);
return K.toString().replaceAll("false", "0").replaceAll("true", "1");
  }



  List<bool> bitUret(double T) {
    double xYeni = 0;
    final random=new Random();
    List<double> kaotik=[
      0.468789897897,
      0.418789897897,
      0.428789897897,
      0.448789897897,
      0.458789897897,
      0.128789897897,
      0.788789897897,
      0.358789897897,
      0.948789897897,
      0.148789897897,
      0.248789897897,
      0.348789897897

    ]; // ip2 den gelecek değerler
    double xEski =kaotik[random.nextInt(kaotik.length)];
    List<bool> x = [];
    while (x.length <= T) {
      for (int i = 0; i < 1000000; i++) {
        xYeni = xEski * (1 - xEski) * 4;
        if (xYeni < 0.5)
          x.add(false);
        else
          x.add(true);
        xEski = xYeni;
      }

    }
    return x;
  }

  List<bool> xorlama(List<bool> X, List<bool> S) {
    List<bool> K = new List(S.length);
    for (int i = 0; i < S.length; i++) {
       K[i]=S[i]^X[i];

    }
    return K;

  }
}


