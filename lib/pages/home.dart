import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:valorant_guide/services/home_categories.dart';
import 'package:valorant_guide/services/theme.dart';
import 'package:auto_orientation/auto_orientation.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

//red: 255,70,84
//black: 16,24,35
//gray: 24,33,42


class _HomeState extends State<Home> {

  ValorantThemes ValorantTheme = ValorantThemes();


  List<HomeCategory> Categories = [
    HomeCategory(name: 'Agents', icon: 'assets/HeroesIcon.jpg', route:'/heroes'),
    HomeCategory(name: 'Maps', icon: 'assets/MapsIcon.jpg', route:'/maps'),
    HomeCategory(name: 'Guns', icon: 'assets/MapsIcon.jpg', route:'/guns'),
    HomeCategory(name: 'Spike Timer', icon: 'assets/MapsIcon.jpg', route:'/spiketimer'),
  ];

  BoxDecoration homeCategoriesDecoration() { //provides outlines for the categories on home page
    return BoxDecoration(
      border: Border(
        left: BorderSide( //                   <--- left side
          color: Colors.white,
          width: 1.0,
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    AutoOrientation.portraitUpMode();
    return Scaffold(
      backgroundColor: Colors.transparent,//allows for background image of body, else colour covers image
      appBar: AppBar(
        title: Text(
            'vALORANT GUIDE',
          style: ValorantTheme.appBarTitleTextStyle
        ),
        centerTitle: true,
        backgroundColor: ValorantTheme.valorantBlackColor,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image:AssetImage('assets/valorantblurryhavenwallpaper.jpg'),
            fit: BoxFit.cover,
          ),
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 5,
              child: Card(
                color: Colors.transparent,
                child: Image(
                  image: AssetImage('assets/HomeMainImage.jpg'),
                ),
              ),
            ),

            Divider(thickness: 1, color: Colors.white,),


            Expanded(
              flex: 8,
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 10,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: Categories.length,
                      itemBuilder: (context, i){
                        return (
                        Card(
                          shape: RoundedRectangleBorder(//radius of card corners
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                          color: ValorantTheme.homeCategoriesColor,
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                            decoration: homeCategoriesDecoration(),

                            child: OutlineButton(
                              highlightedBorderColor: Colors.white,
                              onPressed: () async {
                                dynamic result = await Navigator.pushNamed(context, '${Categories[i].route}');
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                      '${Categories[i].name}',
                                      style: ValorantTheme.homeCategoriesTextStyle
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                        );
                      }
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(),
                  ),
                ],
              ),
            ),

            Divider(color: Colors.white,),
            Expanded(
              flex: 1,
              child: Center(
                child: Text(
                    'APP MADE BY NAM PHAM (2020)',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontFamily: 'Valorantfont',
                    letterSpacing: 1
                  ),
                ),
              ),
            )




          ],
        ),

      ),
    );
  }
}
