import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
              padding: EdgeInsets.symmetric(horizontal: 40,vertical: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Welcome Home,"),
                  Text("Bank Aphiwat", style: TextStyle(fontSize: 40),),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 25),
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
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index){
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    color: Colors.black38,
                  ),
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