import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TemulchScreen extends StatefulWidget {
  const TemulchScreen({Key? key}) : super(key: key);

  @override
  State<TemulchScreen> createState() => _TemulchScreenState();
}

class _TemulchScreenState extends State<TemulchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFce7e00),
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
                    color: Color(0xFFce7e00),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        child: Column(
                          children: [
                            Text('Temulch',
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
                          Text('Control',
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
                                    image: NetworkImage('https://naraka.win/images/characters/temulch/temulch.webp')
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
                      const Text("The grasslands shall be wreaked by furious gales the day that Temulch "
                          "awakens his inner power. His ancestral legends are burned "
                          "into his mind, and the glory he seeks is so near he can almost taste it. "
                          "The Grey Wolf shall strike again.",
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
                                "Zephyr Wisp: \nSummon 3 windballs that can block ranged weapon attacks. "
                                    "\n-Can be used under attack."
                                    "\n-Tap F to shoot and blow enemies into a whirlwind.\n\n"
                                    "Zephyr Wisp: Tracking: \nSummon 3 windballs that can block ranged weapon attacks. "
                                    "\n-Can be used under attack."
                                    "\n-Tap F to shoot. Windballs will auto-track enemies and blow them into a whirlwind.\n\n"
                                    "Zephyr Wisp: Assault: \nSummon 3 windballs that can block ranged weapon attacks. "
                                    "\n-Can be used under attack."
                                    "\n-Tap F to shoot. Windballs will bounce when hitting the scene, then penetrate and blow enemies"
                                    "into a whirlwind.\n\n",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(width: 20),
                            Expanded(
                                child: Text("Zephyr Prison: \nUnleash a Zephyr Prison that lasts for a relatively longer time."
                                    "-Temulch is immune to debuff effects whenever he passes through a Zephyr Prison.\n"
                                    "-The prison reduces enemies' Energy, blocks their ranged attacks and skill locking.\n\n"
                                    "Zephyr Prison: Enchanted: \nUnleash a Zephyr Prison."
                                    "-Temulch is immune to debuff effects whenever he passes through a Zephyr Prison.\n"
                                    "-The prison reduces enemies' Energy, blocks their ranged attacks and skill locking.\n"
                                    "-Inside the prison, Temulch restores Energy more quickly.\n\n"
                                    "Zephyr Prison: Summon: \nUnleash a Zephyr Prison."
                                    "-Temulch is immune to debuff effects whenever he passes through a Zephyr Prison.\n"
                                    "-The prison reduces enemies' Energy, blocks their ranged attacks and skill locking.\n"
                                    "-When Temulch passes through his or enemies' prison, windball will be reloaded.",

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
