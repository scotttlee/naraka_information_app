import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class YueshanScreen extends StatefulWidget {
  const YueshanScreen({Key? key}) : super(key: key);

  @override
  State<YueshanScreen> createState() => _YueshanScreenState();
}

class _YueshanScreenState extends State<YueshanScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF686868),
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
                    color: Color(0xFF686868),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        child: Column(
                          children: [
                            Text('Yueshan',
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
                          Text('Transformer',
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
                                    image: NetworkImage('https://naraka.win/images/characters/yueshan/yueshan.webp')
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
                      const Text("Gazing ahead at Centralis, with the memories of our march last year still fresh in my mind. "
                          "The mountains and seas peaceful and clear, laughter hanging in the air. "
                          "Great waves assail Ridgeshore, and CloudSparrow stretches like a blade into the northern deserts. "
                          "As the enemy approaches our garrisons from all four corners and the winds soar high, "
                          "the general will rise to defend the kingdom.",
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
                                "Line Breaker: \n Dash forward. Can be used under attack.\n\n"
                                    "Line Breaker: Rush: \n Dash forward a longer distance, during which knock back enemies on either side"
                                    "and stun the enemies hit from the front.\n\n"
                                    "Line Breaker: Ambition \n Leap skyward and slam the ground, knocking back enemies and reducing their attack.",

                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(width: 20),
                            Expanded(
                                child: Text("Troop Decimation: \n Transform into the Almighty General and restore full Health.\n"
                                    "-Hold LMB or RMB to launch an exclusively charged attack.\n"
                                    "-Tap F to use a devastating execution. Upon hitting a target, instantly follow up with an exclusively charged attack. \n\n"
                                    "Troop Decimation: Heaven's Descent: \n Transform into the Almighty General and restore full Health.\n"
                                    "-Hold LMB or RMB to launch an exclusively charged attack.\n"
                                    "Tap F to leap forward and knock nearby enemies airborne.\n\n"
                                    "Troop Decimation: Formation: \n Transform into the Almighty General and restore full Health, letting out a mighty bellow.\n"
                                    "-Hold LMB or RMB to launch an exclusively charged attack.\n"
                                    "-Tap F to use the mighty bellow, making all allies immune to some controlling effect and"
                                    "increasing their Damage Reduction.",

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

