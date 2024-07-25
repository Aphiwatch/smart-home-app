import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SmartDevicesBox extends StatelessWidget {
  SmartDevicesBox({super.key,
  required this.smartDevicesName,
  required this.powerOn, 
  required this.onChanged});

  final String smartDevicesName;
  final bool powerOn;
  void Function(bool)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: powerOn ? Colors.grey[900] : Colors.grey[200],
          borderRadius: BorderRadius.circular(24)
        ),
        child:  Padding(
          padding:  const EdgeInsets.symmetric(vertical: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                Icon(Icons.electric_bolt,
               size: 60,
               color: powerOn ? Colors.yellow : Colors.black,
               
               ),
              Row(
                children: [
                  Expanded(child: Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(smartDevicesName, 
                    style:  TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: powerOn ? Colors.white : Colors.black,
                      ),
                    ),
                  ),),
                  Transform.rotate(
                    angle: pi / 2,
                    child: CupertinoSwitch(
                      value: powerOn,
                      onChanged: onChanged))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}