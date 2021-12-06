import 'package:flutter/material.dart';
import 'package:valorant_guide/services/theme.dart';

class TableMaker extends StatelessWidget {

  ValorantThemes ValorantTheme = ValorantThemes();

  Map data;
  TableMaker({this.data});

  DataRow GunDataRow(Category, Specs) {
    return DataRow(
        cells: [
          DataCell(Text(Category, style: ValorantTheme.gunInfoTableTextStyle,)),
          DataCell(Text(Specs, style: ValorantTheme.gunInfoTableSpecsTextStyle,)),
        ]
    );
  }


  @override
  Widget build(BuildContext context) {
    return Builder(
        builder: (context) {
          if ('${data['type']}' == 'gun') {
            //return Text('this is for a gun', style: TextStyle(color: Colors.white),);
            return Expanded(
              child: Container(
                child: ScrollConfiguration(
                  behavior: new ScrollBehavior()..buildViewportChrome(context, null, AxisDirection.down),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        DataTable(
                          dataRowHeight: 70,
                          columns: [
                            DataColumn(label: Text('Body Area', style: ValorantTheme.gunInfoTableTitleTextStyle,)),
                            DataColumn(label: Text('Damage', style: ValorantTheme.gunInfoTableTitleTextStyle,)),
                          ],
                          rows: [
                            GunDataRow('HEAD', '${data['headdamage']}'),
                            GunDataRow('BODY', '${data['bodydamage']}'),
                            GunDataRow('LEGS', '${data['legdamage']}'),
                          ],
                        ),
                        Divider(color: Colors.white,),

                        DataTable(
                          dataRowHeight: 70,
                          columns: [
                            DataColumn(label: Text('Category', style: ValorantTheme.gunInfoTableTitleTextStyle,)),
                            DataColumn(label: Text('Specs', style: ValorantTheme.gunInfoTableTitleTextStyle,)),
                          ],
                          rows: [
                            GunDataRow('PRICE', '${data['price']}'),
                            GunDataRow('ZOOM', '${data['zoom']}'),
                            GunDataRow('PRIMARY FIRE TYPE', '${data['primaryfiretype']}'),
                            GunDataRow('ROUNDS PER SECOND', '${data['roundspersec']}'),
                            GunDataRow('MAG SIZE', '${data['magsize']}'),
                            GunDataRow('WALL PENETRATION', '${data['wallpenetration']}'),
                          ],
                        ),
                        Divider(color: Colors.white,),


                      ],
                    ),
                  ),
                ),
              ),
            );
          }
          if ('${data['type']}' == 'knife') {
            //return Text('this is for a knife', style: TextStyle(color: Colors.white),);
            return Expanded(
              child: Container(
                child: SingleChildScrollView(
                  child: DataTable(
                    columns: [
                      DataColumn(label: Text('Category', style: ValorantTheme.gunInfoTableTitleTextStyle,)),
                      DataColumn(label: Text('Specs', style: ValorantTheme.gunInfoTableTitleTextStyle,)),
                    ],
                    rows: [
                      GunDataRow('PRICE', '${data['price']}'),
                      GunDataRow('FRONT LEFT CLICK DAMAGE', '${data['frontleftclick']}'),
                      GunDataRow('FRONT RIGHT CLICK DAMAGE', '${data['frontrightclick']}'),
                      GunDataRow('BACK LEFT CLICK DAMAGE', '${data['backleftclick']}'),
                      GunDataRow('BACK RIGHT CLICK DAMAGE', '${data['backrightclick']}'),
                    ],
                  ),
                ),
              ),
            );
          }
          if ('${data['type']}' == 'shield') {
            //return Text('this is for a shield', style: TextStyle(color: Colors.white),);
            return Expanded(
              child: Container(
                child: SingleChildScrollView(
                  child: DataTable(
                    columns: [
                      DataColumn(label: Text('Category', style: ValorantTheme.gunInfoTableTitleTextStyle,)),
                      DataColumn(label: Text('Specs', style: ValorantTheme.gunInfoTableTitleTextStyle,)),
                    ],
                    rows: [
                      GunDataRow('PRICE', '${data['price']}'),
                      GunDataRow('DAMAGE REDUCTION', '${data['damagereduction']}'),
                      GunDataRow('HEALTH', '${data['health']}'),
                    ],
                  ),
                ),
              ),
            );
          }
          return Container();
        }
    );
  }
}