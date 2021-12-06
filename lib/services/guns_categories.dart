
class GunCategory {
  String gunname;
  String type;
  String price;

  String damagereduction;//shields
  String health;

  String frontleftclick;//knives
  String frontrightclick;
  String backleftclick;
  String backrightclick;

  //guns
  String zoom;
  String primaryfiretype;
  String roundspersec;
  String headdamage;
  String bodydamage;
  String legdamage;
  String magsize;
  String wallpenetration;

  GunCategory({this.gunname,
    this.type,
    this.price,

    this.frontleftclick,//knives
    this.frontrightclick,
    this.backleftclick,
    this.backrightclick,

    this.damagereduction,
    this.health,

    this.zoom,
    this.primaryfiretype,
    this.roundspersec,
    this.headdamage,
    this.bodydamage,
    this.legdamage,
    this.magsize,
    this.wallpenetration
  });
 //https://gamepros.gg/valorant/guns
}