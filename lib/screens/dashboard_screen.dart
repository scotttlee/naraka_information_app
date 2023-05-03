import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:naraka_information_app/screens/heroes_screen.dart';
import 'package:naraka_information_app/screens/melee_weapons_screen.dart';
import 'package:naraka_information_app/screens/ranged_weapons_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF999999),
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
        ),
        body: Container(
          width: MediaQuery.of(context).copyWith().size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage("https://cdn.wallpapersafari.com/8/93/ypj2WC.png"),
                  fit: BoxFit.cover

              ),
            ),
            child: ListView(
                children: <Widget> [
                  SizedBox(height: 50),
                  Center(child: Text("Dashboard",
                      style:
                      TextStyle(fontSize: 60,
                          fontFamily: 'PermanentMarker',
                          fontWeight: FontWeight.w900)),
                  ),
                  SizedBox(height: 100),
                  Center(child: SizedBox(
                    height: 100,
                    width: 300,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const HeroesScreen()),
                          );
                        },
                        child: Text("Heroes",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 36,
                              fontFamily: 'PermanentMarker',
                            ))),
                  ),),
                  SizedBox(height: 100),
                  Center(child: SizedBox(
                    height: 100,
                    width: 300,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const RangedWeaponsScreen()),
                          );
                        },
                        child: Text("Ranged Weapons",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 36,
                              fontFamily: 'PermanentMarker',
                            ))),
                  ),),
                  SizedBox(height: 100),
                  Center(child: SizedBox(
                    height: 100,
                    width: 300,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const MeleeWeaponsScreen()),
                          );
                        },
                        child: Text("Melee Weapons",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 36,
                              fontFamily: 'PermanentMarker',
                            ))),
                  ),),
                  SizedBox(height: 50)
                ]
            )
        )
    );
  }
}
