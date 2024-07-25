import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:smart_home/Components/smart_devices_box.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //smartdeviceslist [smartDevicesName, imgPath, powerStatus]
  List mySmartDevices = [
    ["Smart Light", true],
    ["Smart Fan", false],
    ["Smart Air", false],
    ["Smart Switch", false]
  ];
  //power button switched
  void powerSwitchChanged(bool value, int index){
    setState(() {
      mySmartDevices[index][1] = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body:  SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40,vertical: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HeroIcon(HeroIcons.bars3BottomLeft,
                   style: HeroIconStyle.solid,
                   size: 45,
                   ),
                  HeroIcon(HeroIcons.user,
                   style: HeroIconStyle.outline,
                   size: 45,
                   ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40,vertical: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Welcome Home,"),
                  Text("Bank Aphiwat", style: TextStyle(fontSize: 40),),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Devices", style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                    ),
                  ),
                   HeroIcon(HeroIcons.ellipsisHorizontal, size: 30,)
                ],
              ),
            ),

            //gridview
            Expanded(child: GridView.builder(
              itemCount: mySmartDevices.length,
              padding: const EdgeInsets.symmetric(horizontal:  25),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1/1.2
              ),
              itemBuilder: (context, index){
                return  SmartDevicesBox(
                  smartDevicesName: mySmartDevices[index][0].toString(),
                  powerOn: mySmartDevices[index][1],
                  onChanged: (value) => powerSwitchChanged(value, index),
                );
              },
            ),
            )
          ],
        ),
      ),
    );
  }
}