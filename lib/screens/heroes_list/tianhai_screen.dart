import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TianhaiScreen extends StatefulWidget {
  const TianhaiScreen({Key? key}) : super(key: key);

  @override
  State<TianhaiScreen> createState() => _TianhaiScreenState();
}

class _TianhaiScreenState extends State<TianhaiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFffd966),
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
                    color: Color(0xFFffd966),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        child: Column(
                          children: [
                            Text('Tianhai',
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
                          Text('Transformer',
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
                                    image: NetworkImage('https://naraka.win/images/characters/tianhai/tianhai.webp')
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
                      const Text("Tianhai's travels around the world led him to discover his true calling: to save the world"
                          " - and at any cost. This humble monk transforms into a colossal Vajra warrior, spurned by "
                          "unbridled fury all those who stand in its path shall feel.",
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
                                "The Divine Bell: \nBlock all hit damage and debuffs. Reflect ranged weapon attacks.\n"
                                    "-Can be used under attack.\n\n"
                                    "The Divine Bell: Counter: \nBlock all hit damage and debuffs. Reflect ranged weapon attacks.\n"
                                    "-Can counter.\n\n"
                                    "The Divine Bell: Blast: \nBlock all hit damage and debuffs. Reflect ranged weapon attacks.\n"
                                    "-Can knock nearby enemies airborne.",

                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(width: 20),
                            Expanded(
                                child: Text("Titan's Call: \nTransform into Vajra and restore all Health.\n"
                                    "-Tap LMB or RMB to grab enemies.\n"
                                    "-Tap F to stomp or smash.\n\n"
                                    "Titan's Call: Guard: \nTransform into Vajra and restore all Health.\n"
                                    "-Tap LMB or RMB to grab. Can grab allies to restore their Health and Armor.\n"
                                    "-Tap F to stomp or smash.\n"
                                    "-Shining parts of Vajra are weaker.\n\n"
                                    "Titan's Call: Heal: \nTransform into Vajra and restore all Health.\n"
                                    "-Tap LMB or RMB to grab enemies.\n"
                                    "-Tap F to stomp or smash. Smashing an enemy can restore Health.\n"
                                    "-Shining parts of Vajra are weaker.",

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
