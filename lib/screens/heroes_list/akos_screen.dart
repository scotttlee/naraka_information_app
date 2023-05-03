import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AkosScreen extends StatefulWidget {
  const AkosScreen({Key? key}) : super(key: key);

  @override
  State<AkosScreen> createState() => _AkosScreenState();
}

class _AkosScreenState extends State<AkosScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFdfc397),
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
                            Text('Akos Hu',
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
                                    image: NetworkImage('https://naraka.wiki/characters/full/akos-hu.png')
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
                      const Text("In Justina Gu's mind, she s not the noble imperial princess, nor the graceful owner of the Pluvial Palace. "
                          "She is the Frosty Shadow who vows to bury her enemies in the snow or the lonely Winter's Grace who "
                          "is eager to find her family back.",
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
                                "Roar: \n Strike nearby enemies and gain Damage Reduction.\n"
                                "-Damage Reduction increases upon hitting more enemies.\n"
                                "Block all hit damage taken before the strike takes effect.\n\n"
                                "Roar: Blast: \n Unleash a shockwave towards the aimed direction.\n"
                                "-Can be enhanced by charging.\n\n"
                                "Roar: Terror: \n Akos roars like a tiger, unleashing a continuous shockwave towards the aimed "
                                "direction. Deal damage and [Terror] enemies, making them unable to move. "
                                "When affected by [Terror], enemies will be immune to further [Terror] effect "
                                "after being attacked or when the effect ends.",

                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(width: 20),
                            Expanded(
                                child: Text("Feral Frenzy: \n Akos roars like a tiger and gains new attack ways.\n"
                                    "-During the ultimate, tap space to launch tiger leap, then tap after landing to [Pounce].\n"
                                    "-Repeated tiger leaps increase jump speed and [Pounce] power.\n"
                                    "-LMB and RMB are enhanced during a Scale Rush or tiger leap.\n"
                                    "Can be used under attack.\n"
                                    "After casting the ultimate, tap V to perform 3 consecutive tiger strikes and restore some Health or Armor.\n\n"
                                    ""
                                    "Feral Frenzy: Grab: \n Akos roars like a tiger and gains new attack ways.\n"
                                    "-During the ultimate, tape Space to launch tiger leap, then tap LMB after landing to [Pounce].\n"
                                    "Repeated tiger leaps increase jump speed and [Pounce] power.\n"
                                    "LMB and RMB are enhanced during a Scale Rush or tiger leap.\n"
                                    "Can be used under attack.\n"
                                    "After casting ultimate, tap V to lunge forward, knocking enemies down to the ground and restoring some Health or Armor."
                                    "Can be used twice.\n\n"
                                    ""
                                    "Feral Frenzy: Lockdown: \n Create a banner array that chains enemies.\n"
                                    "-The chains pull back enemies who struggle to escape, but can only take effect twice.\n"
                                    "Tap F to [Lunge] in the aimed direction. Can be used 3 times.\n"
                                    "[Lunge] at a banner to climb on it and launch a Tiger-Claw Scale Rush in Golden Focus. [Lunge] at a banner can be used under attack.",

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
