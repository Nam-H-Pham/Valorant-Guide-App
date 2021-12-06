import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:valorant_guide/services/theme.dart';
import 'package:photo_view/photo_view.dart';

class HeroesInfo extends StatefulWidget {
  @override
  _HeroesInfoState createState() => _HeroesInfoState();
}

class _HeroesInfoState extends State<HeroesInfo> {
  ValorantThemes ValorantTheme = ValorantThemes();

  @override
  Widget build(BuildContext context) {
    Map data  = ModalRoute.of(context).settings.arguments;
    List ability_titles = ['E','Q','C','X'];
    List ability_information = [data['e_ability'],data['q_ability'],data['c_ability'],data['x_ability']];

    return Scaffold(
      backgroundColor: ValorantTheme.valorantBlackColor,
      appBar: AppBar(
        title: Text(
            '${data['heroname']}',
            style: ValorantTheme.appBarTitleTextStyle
        ),
        centerTitle: true,
        backgroundColor: ValorantTheme.valorantBlackColor,
      ),
      body: Column(
          children: <Widget>[
          Container(height: 20,),
          Expanded(
            flex: 2,
            child:
            PhotoView(
              imageProvider: AssetImage('${data['heroimage']}'),
              basePosition: Alignment.topCenter,
              minScale: PhotoViewComputedScale.contained * 2,
              maxScale: PhotoViewComputedScale.contained * 3,
              backgroundDecoration: BoxDecoration(
                color: Colors.transparent,
              ),
            ),
//            Container(
//              padding: EdgeInsets.all(8),
//              child: Image(
//                image: AssetImage('${data['heroimage']}'),
//              ),
//            ),
          ),
          Divider(color: Colors.white,),
          Expanded(//
            flex: 3,
            child: Container(
              padding: EdgeInsets.all(5),
              color: Color.fromRGBO(0, 0, 0, 0.5),
              child: PageView(//switch between bio and abilities
                children: <Widget>[
                  Container(
                    child: Column(
                      children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('BIOGRAPHY',style: ValorantTheme.gunCategoriesTextStyle,),
                      ),
                      Container(
                          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                          child: Text('${data['biography']}', style: ValorantTheme.heroesInfoBioTextStyle)
                      ),
                      Spacer(),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text('SWIPE LEFT TO SEE ABILITIES >>>' , style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontFamily: 'Staatliches',
                            letterSpacing: 1,
                          )),
                        )
                      ),

                      ]

                    )
                  ),
                  Column(
                    children: <Widget>[
                      Text('ABILITIES',style: ValorantTheme.gunCategoriesTextStyle,),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListView.builder(
                            itemCount: ability_titles.length,
                            itemBuilder: (context, index) {
                              return Card(
                                color: Color.fromRGBO(0, 0, 0, 0.1),
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      flex: 1,
                                      child: Center(child: Text('${ability_titles[index]}', style: ValorantTheme.heroesCategoriesTextStyle)),
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: Padding(
                                        padding: const EdgeInsets.all(9.0),
                                        child: Text('${ability_information[index]}', style: ValorantTheme.heroesInfoAbilitiesTextStyle),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Divider(color: Colors.white,),
        ],
      ),
    );
  }
}
