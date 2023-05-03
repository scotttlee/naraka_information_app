import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TakedaScreen extends StatefulWidget {
  const TakedaScreen({Key? key}) : super(key: key);

  @override
  State<TakedaScreen> createState() => _TakedaScreenState();
}

class _TakedaScreenState extends State<TakedaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF9a3cf2),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
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
                    color: Color(0xFF9a3cf2),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        child: Column(
                          children: [
                            Text('Takeda Nobutada',
                              style: TextStyle(
                                  fontSize: 30,
                                  fontFamily: 'PermanentMarker',
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
                              fontFamily: 'PermanentMarker',
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
                                    image: NetworkImage('https://naraka.win/images/characters/takeda-nobutada/takeda-nobutada.webp')
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
                          fontFamily: 'PermanentMarker',
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text("Live a live free of desire, with no regrets left behind. Even if spurned by others and accused of injustice, "
                          "we must still stand by our friends and never break their trust. If faced with a dead end, raise your blade and cut out a new path!"
                          "Though my body may one day stumble and fall, never shall I forsake my honor!",
                        style: TextStyle(
                          fontSize: 16,
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
                                fontFamily: 'PermanentMarker',
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(width: 100),
                            Text("Ultimates",
                                style: TextStyle(
                                  fontSize: 30,
                                  fontFamily: 'PermanentMarker',
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
                                "Mythic Grab: \n On the alert, can grab the attacker's melee weapon and fight back.\n"
                                    "-Only effective against melee Blue Focus Strikes.\n"
                                    "Negate damage and restore a large amount of Health and Amor after effective counterattack.\n\n"
                                    "Mythic Grab: Defend: Charge forward, grab the enemy's weapon and attack back.\n"
                                    "-Effective against enemies in Blue Focus (whether attacking or not).\n"
                                    "-Negate damage and restore a large amount of Health and Amor after effective counterattack.\n\n"
                                    "Mythic Grab: Takedown: Charge forward, and slam the enemy to the ground.\n"
                                    "Effective against enemies in Blue Focus (whether attacking or not).\n"
                                    "Gain a great Damage Reduction when casting the skill.",

                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(width: 20),
                            Expanded(
                                child: Text("Demonic Aid: \n Unleash the seal of the demonic spirit [Furen], tap F to attack the enemies ahead,"
                                    "and restore a large amount of Health and Armor.\n"
                                    "Deal extra damage if enemies are airborne and under attack nearby.\n"
                                    "Furen can be used when Takeda is under attack or controlled, and does not interrupt his movements\n\n"
                                    "Demonic Aid: Teleport: \n Unleash the seal of the demonic spirit [Furen], tap LMB to knock all the enemies within the"
                                    "target area airborne.\n"
                                    "-Can teleport Takeda to the target point and strike the enemies to slightly restore Health and Armor.\n"
                                    "Can be used under attack.\n\n"
                                    "Demonic Aid: Engulf: \n Unleash the seal of the demonic spirit [Furen], tap F to knock back the enemies ahead,"
                                    "and restore a large amount of Health and Armor.\n"
                                    "The amount and power upgrades by [Demonic Force].\n"
                                    "When casting the ultimate, the Demonic Force upgrades with the whole rarity of all allies' weapons.\n"
                                    "Furen can be used when Takeda is under attack or controlled, and does not interrupt his movements.",

                                    style: TextStyle(
                                      fontSize: 16,
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
