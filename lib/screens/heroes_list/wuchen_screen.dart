import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WuChenScreen extends StatefulWidget {
  const WuChenScreen({Key? key}) : super(key: key);

  @override
  State<WuChenScreen> createState() => _WuChenScreenState();
}

class _WuChenScreenState extends State<WuChenScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFc7c7c7),
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
                    color: Color(0xFFc7c7c7),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        child: Column(
                          children: [
                            Text('Wuchen',
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
                          Text('Support',
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
                                    image: NetworkImage('https://naraka.win/images/characters/wuchen/wuchen.webp')
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
                      const Text("Practice impermanence, and know when to act. Though his blood may be 'impure', "
                          "his energies somewhat incomplete, Wuchen still proved his ability and rose to become "
                          "the Heralds' secret envoy. He believes that one can reach complete understanding and become "
                          "an Elucidae if only we cast off the rules that bind us.",
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
                                "Spirit Blades: \n Create 5 Spirit Blades around.\n"
                                    "-Tap F to shoot the blades and can trigger clashes, during which the enemies' weapons might be dropped.\n"
                                    "-With the Spirit Blades around, he can negate one fatal strike.\n"
                                    "-Can be used under attack.\n\n"
                                    "Spirit Blades: Array: \n Create 5 Spirit Blades that can automatically shoot at approaching enemies.\n"
                                    "Spirit Blades reduce enemies' Energy.\n"
                                    "-With the Spirit Blades around, he can negate one fatal strike.\n"
                                    "-Can be used under attack.\n\n"
                                    "Spirit Blades: Shield \n Upon hitting the scene, the Spirit Blades create a barrier that can block ranged attacks.\n"
                                    "-Tap F to shoot the blades, restoring nearby allies' Armors.\n"
                                    "-With the Spirit Blades around, he can negate one fatal strike.\n"
                                    "-Can be used under attack.",

                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(width: 20),
                            Expanded(
                                child: Text("Tai Chi Rift: \n Teleport nearby allies to the [Yin Yang Orb] set in advance.\n"
                                    "-When casting the ultimate, tap LMB to set the [Yin Yang Orb]. And tap LMB again to teleport.\n"
                                    "-Can teleport the allies' Cairns.\n"
                                    "-Teleported units gain different buff effects according to their current Health.\n\n"
                                    "Tai Chi Rift: Switch: \n When casting the ultimate, tap LMB to switch Wuchen's position with the enemies within the target area.\n"
                                    "Teleport 3 enemies at max, and mark them with [Vulnerable].\n"
                                    "[Vulnerable]: Hit damage taken will be increased.\n\n"
                                    "Tai Chi Rift: Portal: \n When casting the ultimate, tap LMB to open 2 Portals at both the aimed point and Wuchen's current position.\n"
                                    "-Allies can teleport between 2 Portals and increase Attack.\n"
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
