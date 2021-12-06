import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:valorant_guide/services/theme.dart';
import 'package:valorant_guide/services/maps_categories.dart';

class Maps extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Maps> {
  @override

  ValorantThemes ValorantTheme = ValorantThemes();

  List<MapCategory> MapCategories = [
    MapCategory(mapname: 'Ascent', image: 'assets/maps/maps_thumbnail/ascent-featured.png',
      mapimage: 'assets/maps/maps_images/Ascent_map.jpg',
    ),
    MapCategory(mapname: 'Bind', image: 'assets/maps/maps_thumbnail/bind-featured.png',
      mapimage: 'assets/maps/maps_images/Bind_map.jpg',
    ),
    MapCategory(mapname: 'Haven', image: 'assets/maps/maps_thumbnail/haven-featured.png',
      mapimage: 'assets/maps/maps_images/Haven_map.jpg',
    ),
    MapCategory(mapname: 'Split', image: 'assets/maps/maps_thumbnail/split-featured.png',
      mapimage: 'assets/maps/maps_images/Split_map.jpg',
    ),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,//allows for background image of body, else colour covers image
        appBar: AppBar(
            title: Text(
            'vALORANT MAPS',
            style: ValorantTheme.appBarTitleTextStyle
        ),
    centerTitle: true,
    backgroundColor: ValorantTheme.valorantBlackColor,
        ),
          body: Column(
            children: <Widget>[
              Expanded(
                flex: 15,
                child: Container(
                  decoration: BoxDecoration(
                  image: DecorationImage(
                      image:AssetImage('assets/valorantblurryhavenwallpaper.jpg'),
                  fit: BoxFit.cover,
                  ),
                ),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                    itemCount: MapCategories.length,
                    itemBuilder: (context, index) {
                      return
                        Card(
                          color: ValorantTheme.valorantBlackColor,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/maps-info', arguments: {
                                'mapname':'${MapCategories[index].mapname}',
                                'mapimage':'${MapCategories[index].mapimage}',
                              });
                            },
                            child: (
                                Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image:AssetImage('${MapCategories[index].image}'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),

                                  margin: const EdgeInsets.all(5),
                                  padding: const EdgeInsets.all(8),
                                  child: Text(
                                      '${MapCategories[index].mapname}',
                                    style: ValorantTheme.mapCategoriesTextStyle,
                                  ),
                                )
                            ),
                          ),
                      );
                    },
                  )
                ),
              ),
              Expanded(
                flex: 1,
                  child: Center(child:Text('MAP DATA CREDITED TO https://mobalytics.gg/', style: ValorantTheme.gunInfoTableTextStyle)),
              ),
            ],
          )
    );
  }
}
