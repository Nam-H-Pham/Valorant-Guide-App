import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:valorant_guide/services/theme.dart';

import  'package:circular_countdown/circular_countdown.dart';


class SpikeTimer extends StatefulWidget {
  @override
  _SpikeTimerState createState() => _SpikeTimerState();
}

class _SpikeTimerState extends State<SpikeTimer> {
  ValorantThemes ValorantTheme = ValorantThemes();

  Map data = {
    'status': 'off',
    'buttontext':'START',
    'buttoncolour':Colors.greenAccent,
    'topwarningtext':'SPIKE TIMER',
    'topwarningcolour':Colors.greenAccent,
  };

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: ValorantTheme.valorantBlackColor,
      appBar: AppBar(
        title: Text(
            data['topwarningtext'],
            style: TextStyle(
              color: data['topwarningcolour'],
              fontFamily: 'Valorant',
              letterSpacing: 4,
            )
        ),
        centerTitle: true,
        backgroundColor: ValorantTheme.valorantBlackColor,
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: (){
            setState(() {
              if (data['status']=='off'){
                data['status'] = 'on';
                data['buttontext'] = 'STOP';
                data['buttoncolour'] = Colors.redAccent;

                data['topwarningtext'] = 'SAFE';
                data['topwarningcolour'] = Colors.greenAccent;
              }
              else  {
                data['status'] = 'off';//same as its inital values
                data['buttontext'] = 'START';
                data['buttoncolour'] = Colors.greenAccent;

                data['topwarningtext'] = 'SPIKE TIMER';
                data['topwarningcolour'] = Colors.greenAccent;
              }
            });
          },
          label: Text(data['buttontext'], style: ValorantTheme.homeCategoriesTextStyle,),
          icon: Icon(Icons.access_time),
          backgroundColor: data['buttoncolour'],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[

            Expanded(
              flex: 10,
              child: Container(
                padding: EdgeInsets.all(16),
                color: ValorantTheme.valorantBlackColor,

                child: Builder(
                    builder: (context) {
                      if (data['status']=='on'){
                        return TimeCircularCountdown(
                          unit: CountdownUnit.second,
                          textStyle: ValorantTheme.countdownCenterTextStyle,
                          countdownTotal: 45,
                          countdownRemainingColor: data['topwarningcolour'],
                          countdownCurrentColor: Colors.white,
                          onUpdated: (unit, remainingTime) {
                            if (remainingTime < 45) {
                              setState(() {
                                data['topwarningtext'] = 'SAFE';
                                data['topwarningcolour'] = Colors.greenAccent;
                              });
                            }
                            if (remainingTime < 20) {
                              setState(() {
                                data['topwarningtext'] = 'DEFUSE SPIKE NOW';
                                data['topwarningcolour'] = Colors.orangeAccent;
                              });
                            }
                            if (remainingTime < 9) {
                              setState(() {
                                data['topwarningtext'] = 'UNSAFE';
                                data['topwarningcolour'] = Colors.redAccent;
                              });
                            }
                            if (remainingTime == 1) {
                              setState(() {
                                data['topwarningtext'] = '';
                                data['topwarningcolour'] = ValorantTheme.valorantBlackColor;
                              });
                            }
                          },
                          onFinished: () {
                            setState(() {
                              data['status'] = 'off';//same as its inital values
                              data['buttontext'] = 'START';
                              data['buttoncolour'] = Colors.greenAccent;

                              data['topwarningtext'] = 'SPIKE TIMER';
                              data['topwarningcolour'] = Colors.greenAccent;
                            });
                          },
                        );
                      }
                      else{
                        return
                          Center(
                            child:Text(
                          'Press Start To Begin Timer',
                          style: TextStyle(
                            color: Color.fromRGBO(255,255,255, 1),
                            fontSize: 19,
                            fontFamily: 'Staatliches',
                          )
                        ));
                      }
                      return Container();
                    })
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(),
            )
        ],
      ),
    );
  }
}
