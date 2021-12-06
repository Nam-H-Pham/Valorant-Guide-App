import 'package:flutter/material.dart';
import 'package:valorant_guide/services/theme.dart';
import 'package:photo_view/photo_view.dart';
import 'package:valorant_guide/services/guns_categories.dart';

class MapsInfo extends StatefulWidget {
  @override
  _MapsInfoState createState() => _MapsInfoState();
}

class _MapsInfoState extends State<MapsInfo> {

  ValorantThemes ValorantTheme = ValorantThemes();
  bool showtutorialbar = true;

  @override
  Widget build(BuildContext context) {
    Map data  = ModalRoute.of(context).settings.arguments; //data coming from loading.dart

    return Scaffold(
      backgroundColor: ValorantTheme.valorantRedColor,//allows for background image of body, else colour covers image
      appBar: AppBar(
        title: Text(
            '${data['mapname']}',
            style: ValorantTheme.appBarTitleTextStyle
        ),
        centerTitle: true,
        backgroundColor: ValorantTheme.valorantBlackColor,
      ),
      floatingActionButton: Builder(builder: (context) {
        if (showtutorialbar == true){return
          RaisedButton.icon(
            color: Colors.redAccent,
            onPressed: (){setState(() {
              showtutorialbar = false;
            });},
            label: Text(
              'Use two fingers to zoom and rotate.',
              style: ValorantTheme.heroesInfoAbilitiesTextStyle,
            ),
            icon: Icon(
              Icons.close,
              color: Colors.white,
          ),
          );
        }
        else  {return Container();}
      }
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              child: PhotoView(
                enableRotation: true,
                imageProvider: AssetImage('${data['mapimage']}'),
                minScale: PhotoViewComputedScale.contained * 1,
                maxScale: PhotoViewComputedScale.contained * 4,
                backgroundDecoration: BoxDecoration(
                  color: Color.fromRGBO(24,14,49, 1),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
