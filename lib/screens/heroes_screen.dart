import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:naraka_information_app/screens/heroes_list/akos_screen.dart';
import 'package:naraka_information_app/screens/heroes_list/feria_screen.dart';
import 'package:naraka_information_app/screens/heroes_list/justina_screen.dart';
import 'package:naraka_information_app/screens/heroes_list/kurumi_screen.dart';
import 'package:naraka_information_app/screens/heroes_list/matari_screen.dart';
import 'package:naraka_information_app/screens/heroes_list/takeda_screen.dart';
import 'package:naraka_information_app/screens/heroes_list/tarka_screen.dart';
import 'package:naraka_information_app/screens/heroes_list/temulch_screen.dart';
import 'package:naraka_information_app/screens/heroes_list/tianhai_screen.dart';
import 'package:naraka_information_app/screens/heroes_list/valda_screen.dart';
import 'package:naraka_information_app/screens/heroes_list/viper_screen.dart';
import 'package:naraka_information_app/screens/heroes_list/wuchen_screen.dart';
import 'package:naraka_information_app/screens/heroes_list/yoto_screen.dart';
import 'package:naraka_information_app/screens/heroes_list/yueshan_screen.dart';
import 'package:naraka_information_app/screens/heroes_list/ziping_screen.dart';
import 'package:naraka_information_app/screens/ranged_weapons_screen.dart';

import 'melee_weapons_screen.dart';

class HeroesScreen extends StatefulWidget {
  const HeroesScreen({Key? key}) : super(key: key);

  @override
  State<HeroesScreen> createState() => _HeroesScreenState();
}

class _HeroesScreenState extends State<HeroesScreen> {
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
                padding: const EdgeInsets.all(10),
                children: <Widget> [
                  SizedBox(height: 50),
                  Text("Heroes",
                      textAlign: TextAlign.center,
                      style:
                      TextStyle(fontSize: 60,
                          fontWeight: FontWeight.w900)),
                  SizedBox(height: 50),
                  SizedBox(
                    height: 80,
                    width: 250,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const ViperScreen()),
                          );
                        },
                        child: Text("Viper Ning",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 36
                            ))),
                  ),
                  SizedBox(height: 50),
                  SizedBox(
                    height: 80,
                    width: 250,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const TemulchScreen()),
                          );
                        },
                        child: Text("Temulch",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 36
                            ))),
                  ),
                  SizedBox(height: 50),
                  SizedBox(
                    height: 80,
                    width: 250,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const MatariScreen()),
                          );
                        },
                        child: Text("Matari",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 36
                            ))),
                  ),
                  SizedBox(height: 50),
                  SizedBox(
                    height: 80,
                    width: 250,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const TarkaScreen()),
                          );
                        },
                        child: Text("Tarka Ji",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 36
                            ))),
                  ),
                  SizedBox(height: 50),
                  SizedBox(
                    height: 80,
                    width: 250,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const KurumiScreen()),
                          );
                        },
                        child: Text("Kurumi",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 36
                            ))),
                  ),
                  SizedBox(height: 50),
                  SizedBox(
                    height: 80,
                    width: 250,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const TianhaiScreen()),
                          );
                        },
                        child: Text("Tianhai",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 36
                            ))),
                  ),
                  SizedBox(height: 50),
                  SizedBox(
                    height: 80,
                    width: 250,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const YotoScreen()),
                          );
                        },
                        child: Text("Yoto Hime",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 36
                            ))),
                  ),
                  SizedBox(height: 50),
                  SizedBox(
                    height: 80,
                    width: 250,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const ValdaScreen()),
                          );
                        },
                        child: Text("Valda Cui",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 36
                            ))),
                  ),
                  SizedBox(height: 50),
                  SizedBox(
                    height: 80,
                    width: 250,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const YueshanScreen()),
                          );
                        },
                        child: Text("Yueshan",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 36
                            ))),
                  ),
                  SizedBox(height: 50),
                  SizedBox(
                    height: 80,
                    width: 250,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const WuChenScreen()),
                          );
                        },
                        child: Text("Wuchen",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 36
                            ))),
                  ),
                  SizedBox(height: 50),
                  SizedBox(
                    height: 80,
                    width: 250,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const JustinaScreen()),
                          );
                        },
                        child: Text("Justina Gu",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 36
                            ))),
                  ),
                  SizedBox(height: 50),
                  SizedBox(
                    height: 80,
                    width: 250,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const TakedaScreen()),
                          );
                        },
                        child: Text("Takeda Nobutada",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 36
                            ))),
                  ),
                  SizedBox(height: 50),
                  SizedBox(
                    height: 80,
                    width: 250,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const ZipingScreen()),
                          );
                        },
                        child: Text("Ziping Yin",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 36
                            ))),
                  ),
                  SizedBox(height: 50),
                  SizedBox(
                    height: 80,
                    width: 250,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const FeriaScreen()),
                          );
                        },
                        child: Text("Feria Shen",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 36
                            ))),
                  ),
                  SizedBox(height: 50),
                  SizedBox(
                    height: 80,
                    width: 250,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const AkosScreen()),
                          );
                        },
                        child: Text("Akos Hu",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 36
                            ))),
                  ),
                  SizedBox(height: 50)
                ]
            )
        )
    );  }
}
