import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class YotoScreen extends StatefulWidget {
  const YotoScreen({Key? key}) : super(key: key);

  @override
  State<YotoScreen> createState() => _YotoScreenState();
}

class _YotoScreenState extends State<YotoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF752bbc),
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
                    color: Color(0xFF752bbc),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        child: Column(
                          children: [
                            Text('Yoto Hime',
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
                              color: Colors.black,
                              fontFamily: 'PermanentMarker',
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
                                    image: NetworkImage('https://naraka.win/images/characters/yoto-hime/yoto-hime.webp')
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
                      const Text("When danger strikes, I transform... Transform into a weapon. That demonic blade."
                          "Terrifying, is it not? That's power for you: it strikes a fear deep down inside. Sometimes"
                          "great strength is no good thing at all. It is a burden that must be carried, and controlled.",
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
                                "Spirit Slash: \nFling out a blade for a long-range distance, which deals damage and blocks ranged weapon attacks.\n"
                                    "-Tap F again to teleport over to it and launch an Uppercut Slash.\n"
                                    "-Cooldown of [Spirit Slash] will reset upon defeating an enemy.\n\n"
                                    "Spirit Slash: Crush: \nFling out a blade for a mid-range distance, which deals damage and blocks ranged weapon attacks.\n"
                                    "-Tap F again to launch a horizontal slash with high damage. Horizontal slash can be used under attack.\n\n"
                                    "Spirit Slash: Vortex: \nFling out a blade which moves at a slow speed, deals damage and blocks all weapon attacks.\n"
                                    "-Can be used under attack.",

                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(width: 20),
                            Expanded(
                                child: Text("Ominous Blade: \n Launch 3 slashes in the aimed direction and slightly restore Health and Armor."
                                    "Slash damage increases with the number of nearby Cairns.\n"
                                    "-After each slash, tapping LMB can teleport and continue slashing.\n"
                                    "-Tap RMB to launch a slash immediately.\n\n"
                                    "Ominous Blade: Restore: \n Launch 3 slashes in the aimed direction and restore a large amount of Health and Armor.\n"
                                    "-After each slash, tapping LMB can teleport and continue slashing.\n"
                                    "-Tap RMB to launch a slash immediately.\n\n"
                                    "Ominous Blade: Combo: \n Launch 3 slashes in the aimed direction and restore a large amount of Health and Armor."
                                    "After 3 slashes, there follow 3 additional combo attacks.\n"
                                    "-After each slash, tapping LMB can teleport and continue slashing.\n"
                                    "-Tap RMB to launch a slash immediately.\n\n",

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
