import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:valorant_guide/services/theme.dart';
import 'package:valorant_guide/services/guns_categories.dart';
import 'package:photo_view/photo_view.dart';
import 'package:valorant_guide/services/guns_info_tablemaker.dart';

class GunsInfo extends StatefulWidget {
  @override
  _GunsInfoState createState() => _GunsInfoState();
}

class _GunsInfoState extends State<GunsInfo> {

  ValorantThemes ValorantTheme = ValorantThemes();

  @override
  Widget build(BuildContext context) {
    Map data  = ModalRoute.of(context).settings.arguments; //data coming from loading.dart

    return Scaffold(
      appBar: AppBar(
        title: Text(
            '${data['gunname']}',
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
                flex: 1,
                child: Container(
                  padding: EdgeInsets.all(30),
                  width: MediaQuery.of(context).size.width * 1,//set width to 100%
                  child: PhotoView(
                    enableRotation: true,
                    imageProvider: AssetImage('${data['gunimage']}'),
                    minScale: PhotoViewComputedScale.contained * 1,
                    maxScale: PhotoViewComputedScale.contained * 2,
                    backgroundDecoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  width: MediaQuery.of(context).size.width * 1,
                  color: Color.fromRGBO(0,0,0, 0.7),
                  child: Column(
                    children: <Widget>[
                      //Text('$data', style: TextStyle(color: Colors.white),),
                      Divider(color: Colors.white,),
                      TableMaker(data: data,)

                    ],
                  ),
                )
              )
            ],
          ),
      )
    );
  }
}
