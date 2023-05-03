import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ValdaScreen extends StatefulWidget {
  const ValdaScreen({Key? key}) : super(key: key);

  @override
  State<ValdaScreen> createState() => _ValdaScreenState();
}

class _ValdaScreenState extends State<ValdaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0048f8),
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
                    color: Color(0xFF0048f8),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        child: Column(
                          children: [
                            Text('Valda Cui',
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
                          Text('Control',
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
                                    image: NetworkImage('https://naraka.win/images/characters/valda-cui/valda-cui.webp')
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
                      const Text("Valda Cui, descendant of a general, sighed at the way fate had unfolded as she headed abroad. "
                          "Yet she harbored great ambition, her mind full of plans and ideas. "
                          "A remarkable woman skilled at debating and using those around her, "
                          "she's a most talented figure that fights for the justice she holds dear. "
                          "What's more, she's a dominant force in all four seas and is sure to make some serious waves.",
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
                                "Haze: \nShoot a water bomb to bind the enemy and mark them with [Soaked].\n"
                                    "-The water bomb and the binding exist for a longer period.\n"
                                    "[Soaked]: Decrease enemies' Attack, and immediately trigger all remaining [Burn] damage.\n\n"
                                    "Haze: Array\nSet multiple water bombs.\n"
                                    "-Tap F to aim at a spot, and release F to set them.\n"
                                    "-Bind the hit enemies for a short time and mark them with [Soaked].\n"
                                    "-[Soaked]: Decrease enemies' Attack, and immediately trigger all remaining [Burn] damage.\n\n"
                                    "Haze: Teleport:\n Leap backward and set 3 water bombs in place.\n"
                                    "-Bind the hit enemies for a short time and mark them with [Soaked].\n"
                                    "Can be used under attack.\n"
                                    "-[Soaked]: Decrease enemies' Attack, and immediately trigger all remaining [Burn] damage.",

                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(width: 20),
                            Expanded(
                                child: Text("Nether Nightmare: \n Release [Ocean Flow] to bind enemies.\n"
                                    "After releasing the Ocean Flow, tap LMB in the mid-air to cast water spear.\n"
                                    "[Ocean Flow] and water spear can both attack with the [Soaked] effect.\n"
                                    "[Soaked]: Decrease enemies' Attack, and immediately trigger all remaining [Burn] damage.\n\n"
                                    "Nether Nightmare: Smite: \n With Oceanic Qi inside, tap F to cast water spears that can bind enemies"
                                    "with [Soaked].\n"
                                    "Cannot bind enemies in Ultimate Focus status.\n"
                                    "[Soaked]: Decrease enemies' Attack by 5% within 10 sec, and immediately trigger all remaining"
                                    "[Burn] damage (Maximum 400).\n\n"
                                    "Nether Nightmare: Bind: \n Leap into mid-air, and can cast multiple water spears.\n"
                                    "-Tap LMB to cast water spears that can bind enemies with [Soaked].\n"
                                    "-Tap RMB to cast water spears with [Soaked] and higher damage.\n"
                                    "-[Soaked]: Decrease enemies' Attack, and immediately trigger all remaining [Burn] damage.",

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
    );  }
}
