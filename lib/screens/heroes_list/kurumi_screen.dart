import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class KurumiScreen extends StatefulWidget {
  const KurumiScreen({Key? key}) : super(key: key);

  @override
  State<KurumiScreen> createState() => _KurumiScreenState();
}

class _KurumiScreenState extends State<KurumiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFff616f),
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
                    color: Color(0xFFff616f),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        child: Column(
                          children: [
                            Text('Kurumi',
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
                          Text('Healer',
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
                                    image: NetworkImage('https://naraka.win/images/characters/tsuchimikado-kurumi/tsuchimikado-kurumi.webp')
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
                      const Text("Kurumi, known as the Flower of Helioth. Naturally gifted, she continues an ancient line of "
                          "Onmyoji masters. Kurumi set out from her homeland in search of mystery and to perfect her Onmyodo skills. "
                          "And so, she embarked on the adventure of a lifetime.",
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
                                "Binding Prayer: \nLink an ally and restore them a great amount of Health;"
                                    "Or link a Cairn to revive an ally; Or hold F to summon and link a Light Parasol. "
                                    "\n-Tap LMB to teleport to the linked target and knock nearby enemies airborne."
                                    "\n-Tap RMB to instantly restore Health of both and remove debuffs for each other.\n\n"
                                    "Binding Prayer: Reinforce: \nLink an ally,increase their Attack and restore their Health;"
                                    "Or link a Cairn to revive an ally; Or hold F to summon and link a Light Parasol. "
                                    "\n-Tap LMB to teleport to the linked target and knock nearby enemies airborne."
                                    "\n-Tap RMB to increase Attack of both and remove debuffs for each other.\n\n"
                                    "Binding Prayer: Guard \nLink an ally, increase their Damage Reduction and restore "
                                    "their health; Or link a Cairn to revive an ally; Or hold F to summon and link a Light Parasol. "
                                    "\n-Tap LMB to teleport to the linked target and knock nearby enemies airborne."
                                    "\n-Tap RMB to increase Damage Reduction of both of both and remove debuffs for each other.",

                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(width: 20),
                            Expanded(
                                child: Text("Sacred Circle: \nPlace a circle that can remove debuffs and restore Health.\n"
                                    "-The circle can be affected by other elemental forces to offer different effects.\n\n"
                                    "Sacred Circle: Armor Enhance: \nPlace a circle that can remove debuffs and restore Armor.\n"
                                    "-The circle can be affected by other elemental forces to offer different effects.\n\n"
                                    "Sacred Circle: Rapid Healing: Instantly restore some Health of all allies. Exceeded amount of Health"
                                    "will turn into Armor.\n"
                                    "-Can be used under attack.",

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
