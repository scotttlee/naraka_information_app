import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class JustinaScreen extends StatefulWidget {
  const JustinaScreen({Key? key}) : super(key: key);

  @override
  State<JustinaScreen> createState() => _JustinaScreenState();
}

class _JustinaScreenState extends State<JustinaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF91d8ff),
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
                    color: Color(0xFF91d8ff),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        child: Column(
                          children: [
                            Text('Justina Gu',
                              style: TextStyle(
                                  fontSize: 36,
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
                                    image: NetworkImage('https://naraka.win/images/characters/justina-gu/justina-gu.webp')
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
                      const Text("In Justina Gu's mind, she is not the noble imperial princess, nor the graceful owner of the Pluvial Palace. "
                          "She is the Frosty Shadow who vows to bury her enemies in the snow or the lonely Winter's Grace who "
                          "is eager to find her family back.",
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
                                "Ice Core: \n Encase Justina within an [Icy Aura] for 4 sec, blocking all attacks and restoring some Armor.\n\n"
                                    "Ice Core: Blink: Encase Justina within an [Icy Aura] for 3 sec, blocking all attacks.\n"
                                    "-Can be used under attack.\n\n"
                                    "Ice Core: Cold Wave: Encase all nearby allies within an [Icy Aura] for 3 sec, blocking all attacks and restoring some Armor.",

                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(width: 20),
                            Expanded(
                                child: Text("Arctic Wraith: \n Increase Attack and gain special attacks.\n"
                                    "-Tap F to charge forward in the target direction, and [Freeze] the enemies who are not in Focus status.\n"
                                    "Can use once more when hitting 2 enemies simultaneously.\n\n"
                                    "Arctice Wraith: Blizzard: \n Increase Attack and gain special attacks.\n"
                                    "-Tap F to charge forward in the target direction, and [Freeze] the enemies who are not in Ultimate Focus.\n"
                                    "Generate a blizzard that [Freeze] other nearby enemies as they unfreeze.\n\n"
                                    "Arctic Wraith: Frostwind: \n Cast [Arctic Wraith: Frostwind] in the target direction by 50% of Rage, [Freeze]"
                                    "the enemies that are on its path and not in Ultimate Focus status for 8 sec.",

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
