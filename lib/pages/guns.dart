import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:valorant_guide/services/theme.dart';
import 'package:valorant_guide/services/guns_categories.dart';

class Guns extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Guns> {
  @override

  ValorantThemes ValorantTheme = ValorantThemes();

  List visibleGuns = [];

  Map GunCategories = {
  'Sidearms' : [
  GunCategory(gunname: 'Classic',
      type:'gun',
      price:'Free',
      zoom:'None',
      primaryfiretype:'Semi-Automatic',
      roundspersec:'6.75',
      headdamage:'-78 (0-30m) \n-66 (30-50m)',
      bodydamage:'-26 (0-30m) \n-22 (30-50m)',
      legdamage:'-22 (0-30m) \n-18 (30-50m)',
      magsize:'12',
      wallpenetration:'Low',
  ),
  GunCategory(gunname: 'Shorty',
    type:'gun',
    price:'200',
    zoom:'None',
    primaryfiretype:'Semi-Automatic',
    roundspersec:'3.3',
    headdamage:'Per Pellet (15 total) \n-36 (0-9m) \n-24 (9-15m) \n-9 (15-50m)',
    bodydamage:'Per Pellet (15 total) \n-12 (0-9m) \n-8 (9-15m) \n-3 (15-50m)	',
    legdamage:'Per Pellet (15 total) \n-10 (0-9m) \n-6 (9-15m) \n-2 (15-50m)	',
    magsize:'2',
    wallpenetration:'Low',
  ),
  GunCategory(gunname: 'Frenzy',
    type:'gun',
    price:'400',
    zoom:'None',
    primaryfiretype:'Full-Automatic',
    roundspersec:'10',
    headdamage:'-78 (0-20m) \n-63 (20-50m)',
    bodydamage:'-26 (0-20m) \n-21 (20-50m)',
    legdamage:'-22 (0-20m) \n-17 (20-50m)',
    magsize:'13',
    wallpenetration:'Low',
  ),
  GunCategory(gunname: 'Ghost',
    type:'gun',
    price:'500',
    zoom:'None',
    primaryfiretype:'Semi-Automatic',
    roundspersec:'6.75',
    headdamage:'-105 (0-30m) \n-88 (30-50m)',
    bodydamage:'-30 (0-30m) \n-25 (30-50m)',
    legdamage:'-26 (0-30m) \n-21 (30-50m)',
    magsize:'15',
    wallpenetration:'Med',
  ),
  GunCategory(gunname: 'Sheriff',
    type:'gun',
    price:'800',
    zoom:'None',
    primaryfiretype:'Semi-Automatic',
    roundspersec:'4',
    headdamage:'-160 (0-30m) \n-145 (30-50m)',
    bodydamage:'-55 (0-30m) \n-50 (30-50m)',
    legdamage:'-47 (0-30m) \n-43 (30-50m)',
    magsize:'6',
    wallpenetration:'High',
  ),
  ],
  'Smgs' : [
  GunCategory(gunname: 'Stinger',
    type:'gun',
    price:'1000',
    zoom:'1.15x',
    primaryfiretype:'Full-Automatic',
    roundspersec:'18',
    headdamage:'-67 (0-20m) \n-62 (20-50m)',
    bodydamage:'-27 (0-20m) \n-25 (20-50m)',
    legdamage:'-23 (0-20m) \n-21 (20-50m)',
    magsize:'20',
    wallpenetration:'Low',
  ),
  GunCategory(gunname: 'Spectre',
    type:'gun',
    price:'1600',
    zoom:'1.15x',
    primaryfiretype:'Full-Automatic',
    roundspersec:'13.33',
    headdamage:'-78 (0-20m) \n-66 (20-50m)',
    bodydamage:'-26 (0-20m) \n-22 (20-50m)',
    legdamage:'-22 (0-20m) \n-18 (20-50m)',
    magsize:'30',
    wallpenetration:'Med',
  ),
  ],
  'Shotguns' : [
  GunCategory(gunname: 'Bucky',
    type:'gun',
    price:'900',
    zoom:'None',
    primaryfiretype:'Semi-Automatic',
    roundspersec:'1.1',
    headdamage:'Per Pellet (15 total) \n-44 (0-8m) \n-34 (8-12m) \n-18 (12-50m)',
    bodydamage:'Per Pellet (15 total) \n-22 (0-8m) \n-17 (8-12m) \n-9 (12-50m)	',
    legdamage:'Per Pellet (15 total) \n-19 (0-8m) \n-14 (8-12m) \n-8 (12-50m)',
    magsize:'5',
    wallpenetration:'Low',
  ),
  GunCategory(gunname: 'Judge',
    type:'gun',
    price:'1500',
    zoom:'None',
    primaryfiretype:'Full-Automatic',
    roundspersec:'3.5',
    headdamage:'Per Pellet (12 total) \n-34 (0-10m) \n-26 (10-15m) \n-20 (15-50m)	',
    bodydamage:'Per Pellet (12 total) \n-17 (0-10m) \n-13 (10-15m) \n-10 (15-50m)	',
    legdamage:'Per Pellet (12 total) \n-14 (0-10m) \n-11 (10-15m) \n-9 (15-50m)',
    magsize:'7',
    wallpenetration:'Med',
  ),
  ],
  'Rifles' : [
  GunCategory(gunname: 'Bulldog',
    type:'gun',
    price:'2100',
    zoom:'1.25x',
    primaryfiretype:'Full-Automatic',
    roundspersec:'9.15',
    headdamage:'-116 (0-50m)',
    bodydamage:'-35 (0-50m)',
    legdamage:'-30 (0-50m)',
    magsize:'24',
    wallpenetration:'Med',
  ),
  GunCategory(gunname: 'Guardian',
    type:'gun',
    price:'2500',
    zoom:'1.5x',
    primaryfiretype:'Semi-Automatic',
    roundspersec:'6.5',
    headdamage:'-195 (0-50m)',
    bodydamage:'-65 (0-50m)',
    legdamage:'-49 (0-50m)',
    magsize:'12',
    wallpenetration:'Med',
  ),
  GunCategory(gunname: 'Phantom',
    type:'gun',
    price:'2900',
    zoom:'1.25x',
    primaryfiretype:'Full-Automatic',
    roundspersec:'11',
    headdamage:'-156 (0-15m) \n-140 (15-30m) \n-124 (30-50m)',
    bodydamage:'-39 (0-15m) \n-35 (15-30m) \n-31 (30-50m)',
    legdamage:'-33 (0-15m) \n-30 (15-30m) \n-26 (30-50m)',
    magsize:'30',
    wallpenetration:'Med',
  ),
  GunCategory(gunname: 'Vandal',
    type:'gun',
    price:'2900',
    zoom:'1.25x',
    primaryfiretype:'Full-Automatic',
    roundspersec:'9.25',
    headdamage:'-156 (0-50m)',
    bodydamage:'-39 (0-50m)',
    legdamage:'	-33 (0-50m)',
    magsize:'25',
    wallpenetration:'Med',
  ),
  ],
  'Snipers' : [
  GunCategory(gunname: 'Marshal',
    type:'gun',
    price:'1100',
    zoom:'2.5x',
    primaryfiretype:'Semi-Automatic',
    roundspersec:'1.5',
    headdamage:'-202 (0-50m)',
    bodydamage:'-101 (0-50m)',
    legdamage:'-85 (0-50m)',
    magsize:'5',
    wallpenetration:'Med',
  ),
  GunCategory(gunname: 'Operator',
    type:'gun',
    price:'4500',
    zoom:'2.5x & 5x',
    primaryfiretype:'Semi-Automatic',
    roundspersec:'0.75',
    headdamage:'-255 (0-50m)',
    bodydamage:'-150 (0-50m)',
    legdamage:'-127 (0-50m)',
    magsize:'5',
    wallpenetration:'High',
  ),
  ],
  'Heavies' : [
  GunCategory(gunname: 'Ares',
    type:'gun',
    price:'1700',
    zoom:'1.25x',
    primaryfiretype:'Full-Automatic',
    roundspersec:'10 → 13 (increases over time)',
    headdamage:'-72 (0-30m) \n-67 (30-50m)',
    bodydamage:'-30 (0-30m) \n-28 (30-50m)',
    legdamage:'-25 (0-30m) \n-23 (30-50m)',
    magsize:'50',
    wallpenetration:'High',
  ),
  GunCategory(gunname: 'Odin',
    type:'gun',
    price:'3200',
    zoom:'1.25x',
    primaryfiretype:'Full-Automatic',
    roundspersec:'12 → 15.6 (increases over time)',
    headdamage:'-95 (0-30m) \n-77 (30-50m)',
    bodydamage:'-38 (0-30m) \n-31 (30-50m)',
    legdamage:'-32 (0-30m) \n-26 (30-50m)',
    magsize:'100',
    wallpenetration:'High',
  ),
  ],
  'Melees' : [
  GunCategory(gunname: 'Knife',
    type:'knife',
    price:'Free',
    frontleftclick: '-50',
    frontrightclick: '-75',
    backleftclick: '-100',
    backrightclick: '-150',
  ),
  ],
  'Shields' : [
  GunCategory(gunname: 'Light Shield',
    type:'shield',
    price:'400',
    damagereduction:'66%',
    health: '25',
  ),
  GunCategory(gunname: 'Heavy Shield',
    type:'shield',
    price:'1,000',
    damagereduction:'66%',
    health: '50',
  ),
  ],
  };

  List<String> GunCategoriesKeys = ['Sidearms','Smgs','Shotguns','Rifles','Snipers','Heavies','Melees','Shields'];



  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,//allows for background image of body, else colour covers image
        appBar: AppBar(
          title: Text(
              'WEAPONS',
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
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
                  itemCount: GunCategoriesKeys.length,
                  shrinkWrap: true,//important
                  itemBuilder: (context, index) {
                    return
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            visibleGuns = GunCategories['${GunCategoriesKeys[index]}'];
                          });
                        },
                        child: (
                          Card(
                            color: Color.fromRGBO(0,0,0, 0.4),
                            shape: RoundedRectangleBorder(//radius of card corners
                              borderRadius: BorderRadius.circular(3.0),
                            ),
                            child: Center(child: Text(
                                '${GunCategoriesKeys[index]}',
                              style: ValorantTheme.gunCategoriesTextStyle,
                            )),
                          )
                          ),
                    );
                  }
                ),
              ),
              Divider(color: Colors.white),
              Expanded(
                flex: 2,
                child: Container(
                  child: ListView.builder(
                    itemCount: visibleGuns.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return
                        GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context, '/guns-info', arguments: {
                              'gunname':'${visibleGuns[index].gunname}',
                              'type':'${visibleGuns[index].type}',
                              'price':'${visibleGuns[index].price}',
                              'gunimage':'assets/guns/${visibleGuns[index].gunname}.png',

                              'zoom':'${visibleGuns[index].zoom}',
                              'primaryfiretype':'${visibleGuns[index].primaryfiretype}',
                              'roundspersec':'${visibleGuns[index].roundspersec}',
                              'headdamage':'${visibleGuns[index].headdamage}',
                              'bodydamage':'${visibleGuns[index].bodydamage}',
                              'legdamage':'${visibleGuns[index].legdamage}',
                              'magsize':'${visibleGuns[index].magsize}',
                              'wallpenetration':'${visibleGuns[index].wallpenetration}',

                              'frontleftclick':'${visibleGuns[index].frontleftclick}',
                              'frontrightclick':'${visibleGuns[index].frontrightclick}',
                              'backleftclick':'${visibleGuns[index].backleftclick}',
                              'backrightclick':'${visibleGuns[index].backrightclick}',

                              'damagereduction':'${visibleGuns[index].damagereduction}',
                              'health':'${visibleGuns[index].health}',
                              });
                            },
                          child: (
                            Container(
                              color: Color.fromRGBO(255,255,255, 0.2),
                              height: 70,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Expanded(
                                    flex: 1,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image(
                                          image: AssetImage('assets/guns/${visibleGuns[index].gunname}.png'),
                                          fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                      flex: 2,
                                      child: Center(child: Text('${visibleGuns[index].gunname}', style: ValorantTheme.gunNameTextStyle,))
                                  ),
                                ],
                              )
                            )
                          ),
                      );
                    }
                  ),
                ),
              )
            ],
          ),
        )
    );
  }
}
