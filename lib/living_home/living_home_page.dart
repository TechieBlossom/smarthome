import 'package:flutter/material.dart';
import 'package:smarthome/living_home/lamp_switch.dart';

import 'LEDBulb.dart';
import 'lamp.dart';
import 'lamp_hanger_rope.dart';
import 'lamp_switch_rope.dart';
import 'room_name.dart';

final darkGray = const Color(0xFF232323);
final bulbOnColor = const Color(0xFFFFE12C);
final bulbOffColor = const Color(0xFFC1C1C1);
final animationDuration = const Duration(milliseconds: 500);

class LivingHomePage extends StatefulWidget {
  @override
  _LivingHomePageState createState() => _LivingHomePageState();
}

class _LivingHomePageState extends State<LivingHomePage> {
  var _isSwitchOn = false;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          LampHangerRope(screenWidth: screenWidth, screenHeight: screenHeight, color: darkGray),
          LEDBulb(
            screenWidth: screenWidth,
            screenHeight: screenHeight,
            onColor: bulbOnColor,
            offColor: bulbOffColor,
            isSwitchOn: _isSwitchOn,
          ),
          Lamp(
            screenWidth: screenWidth,
            screenHeight: screenHeight,
            color: darkGray,
            isSwitchOn: _isSwitchOn,
            gradientColor: bulbOnColor,
            animationDuration: animationDuration,
          ),
          LampSwitch(
            screenWidth: screenWidth,
            screenHeight: screenHeight,
            toggleOnColor: bulbOnColor,
            toggleOffColor: bulbOffColor,
            color: darkGray,
            isSwitchOn: _isSwitchOn,
            onTap: () {
              setState(() {
                _isSwitchOn = !_isSwitchOn;
              });
            },
            animationDuration: animationDuration,
          ),
          LampSwitchRope(
            screenWidth: screenWidth,
            screenHeight: screenHeight,
            color: darkGray,
            isSwitchOn: _isSwitchOn,
            animationDuration: animationDuration,
          ),
          RoomName(
            screenWidth: screenWidth,
            screenHeight: screenWidth,
            color: darkGray,
            roomName: "living room",
          ),
        ],
      ),
    );
  }
}
