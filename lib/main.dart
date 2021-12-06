import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:valorant_guide/pages/home.dart';
import 'package:valorant_guide/pages/maps.dart';
import 'package:valorant_guide/pages/maps-info.dart';
import 'package:valorant_guide/pages/guns.dart';
import 'package:valorant_guide/pages/guns-info.dart';
import 'package:valorant_guide/pages/spiketimer.dart';
import 'package:valorant_guide/pages/heroes.dart';
import 'package:valorant_guide/pages/heroes-info.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/home',
  routes: {
    '/home': (context) => Home(),
    '/maps': (context) => Maps(),
    '/maps-info': (context) => MapsInfo(),
    '/guns': (context) => Guns(),
    '/guns-info': (context) => GunsInfo(),
    '/spiketimer': (context) => SpikeTimer(),
    '/heroes': (context) => Heroes(),
    '/heroes-info': (context) => HeroesInfo(),
  },
));