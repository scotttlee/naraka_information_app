import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TarkaScreen extends StatefulWidget {
  const TarkaScreen({Key? key}) : super(key: key);

  @override
  State<TarkaScreen> createState() => _TarkaScreenState();
}

class _TarkaScreenState extends State<TarkaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFff0217),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    ),
                    color: Color(0xFFff0217),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        child: Column(
                          children: [
                            Text('Tarka Ji',
                              style: TextStyle(
                                  fontSize: 36,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Column(
                        children: [
                          SizedBox(
                            height: 40,
                            width: 40,

                          ),
                          SizedBox(height: 10),
                          Text('Damage',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Positioned(
                  left: 0,
                  right: 0,
                  top: 50,
                  child: SizedBox(
                    height: 375,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    children: [
                      const SizedBox(height: 100),
                      SizedBox(
                          height: 300,
                          child: Container(
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage('https://naraka.win/images/characters/tarka-ji/tarka-ji.webp')
                                )
                            ),
                          )
                      ),
                      const SizedBox(height: 10),
                      const Divider(color: Colors.grey),
                      const Text(
                        "About",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text("Live fast, drink well, and be merry. Behind the name of the Drunken Brave, there stands "
                          "a man with a love for freedom as strong as his passion for drinking. "
                          "His indomitable spirit lends him strength in the face of adversity. The road ahead is "
                          "fraught with hardship. But no matter how challenging, he'll face it gladly, sword in hand.",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 15),
                      const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Skills",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(width: 100),
                            Text("Ultimates",
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1,
                                  color: Colors.black,
                                ))
                          ]
                      ),
                      const Row(
                          children: [
                            Expanded(
                              child: Text(
                                "Inner Fire: \nBlock any hit damage in a defensive form. "
                                    "\n-After an effective defense, tape LMB to counterattack and [Burn] enemies.\n\n"
                                    "Inner Fire: Bide: \nBlock melee hit damage in a defensive form. "
                                    "\n-After a successful defense, tap LMB to counterattack and [Burn] enemies.\n\n"
                                    "Inner Fire: Gigaflame: \nShoot a huge fireball, which deals a large amount of damage"
                                    "and makes enemies [Burn] and [Vulnerable]. "
                                    "\n[Vulnerable]: Increase hit damage taken.",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(width: 20),
                            Expanded(
                                child: Text("Blackout: \nAll moves speed up. Some moves can deal hit damage and add [Burn] debuff.\n"
                                    "-Block ranged weapon attacks when running.\n"
                                    "-Accelerate Energy recovery of allies.\n"
                                    "-Can be used under attack.\n\n"
                                    "Blackout: Vulcan: \nAll moves speed up. Some moves can deal hit damage and add [Burn] debuff.\n"
                                    "-Block ranged weapon attacks when running.\n"
                                    "-During the ultimate, tapping F can repeatly use [Inner Fire] by consuming Rage.\n"
                                    "-Can be used under attack.\n\n"
                                    "Blackout: Frenzy: \nAll moves speed up. Some moves can deal hit damage and add [Burn] debuff.\n"
                                    "-Block ranged weapon attacks when running.\n"
                                    "-Attacking enemies can restore Rage.\n"
                                    "-Increase Attack of all allies.\n"
                                    "-Can be used under attack.",

                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                    ))
                            )

                          ]
                      ),
                      Container(
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
