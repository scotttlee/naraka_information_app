import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FeriaScreen extends StatefulWidget {
  const FeriaScreen({Key? key}) : super(key: key);

  @override
  State<FeriaScreen> createState() => _FeriaScreenState();
}

class _FeriaScreenState extends State<FeriaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFc4ac86),
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
                    color: Color(0xFFdfc397),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        child: Column(
                          children: [
                            Text('Feria Shen',
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
                                    image: NetworkImage('https://naraka.wiki/characters/full/feria-shen.png')
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
                      const Text("Feria has always had a defiant streak. Born into a family famed for swordsmithing, the young girl "
                          "instead grew up obsessed with guns and explosives. Now an adult, she loves nothing more than breaking rules and "
                          "causing trouble (especially when that means blowing something up). Try and stop her, and you'll be her next victim!",
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
                                "Gunplay: \n Leap back while firing an explosive round, creating a blast that deals damage and blocks all weapon attacks.\n"
                                    "-Can be used under attack.\n"
                                    "-Move the crosshair while using this skill to adjust the leap direction.\n\n"
                                    "Gunplay: Scattershot: \n Dash forth a significant distance, shoot in all directions and block all weapon attacks.\n"
                                    "Adjust direction by moving the crosshair during dashing.\n\n"
                                    "Gunplay: Aim: \n Leap backward and raise the gun, tap LMB to fire at the target direction which deals high damage and"
                                    "marks enemies with [Silence] for 3 sec.\n"
                                    "-Move the crosshair while using this skill to adjust the leap direction.",

                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(width: 20),
                            Expanded(
                                child: Text("Mech Mayhem: \n Pilot a [Bronze Mech] which has its own Energy and Health bars. Attacks upon the Mech "
                                    "reduce its Health.\n"
                                    "-Hold to shoot enemies and build Mech's Energy.\n"
                                    "-Tap F to jet skyward a certain distance.\n"
                                    "Tap RMB to enter cannon mode, stomping and knocking back nearby enemies. Feria Shen is "
                                    "protected by the Mech under cannon mode. Tap LMB to fire with cannon.\n\n"
                                    ""
                                    "Mech Mayhem: Restore: \n Pilot a [Bronze Mech] which has its own Energy and Health bars. Attacks upon the Mech"
                                    "reduce its Health.\n"
                                    "Hold LMB to shoot enemies and build Mech's Energy.\n"
                                    "Tap F to sacrifice the Bronze Mech's Health, restoring Armor of Feria and increasing nearby allies' Damage Redudction.\n"
                                    "Tap RMB to enter cannon mode, stomping and knocking back nearby enemies. Tap LMB to fire with cannon.\n\n"
                                    ""
                                    "Mech Mayhem: Co-pilot: \n Upon casting the ultimate, tap LMB to set the beacon at the target point and knock"
                                    "nearby enemies airborne.\n"
                                    "-Feria and alleis can pilot [Bronze Mech] by interacting with the beacon.\n"
                                    "-The [Bronze Mech] summoned by beacon has lower Health, When shooting enemies with LMB, [Bronze Mech] deals higher"
                                    "damage and builds Energy faster (but its own Energy recovery speed is slower).",

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
