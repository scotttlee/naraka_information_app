import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ViperScreen extends StatefulWidget {
  const ViperScreen({Key? key}) : super(key: key);

  @override
  State<ViperScreen> createState() => _ViperScreenState();
}

class _ViperScreenState extends State<ViperScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF9338ea),
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
                    color: Color(0xFF9338ea),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        child: Column(
                          children: [
                            Text('Viper Ning',
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
                Positioned(
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
                              image: NetworkImage('https://narakapedia.com/wp-content/uploads/2021/09/Viper_Ning_01-761x1024.png')
                            )
                          ),
                        )
                      ),
                      const SizedBox(height: 10),
                      const Divider(color: Colors.grey),
                      Text(
                        "About",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text("The Blind Blademaster of Yushan. Viper Ning's very blood has long been suffused with deadly poison. She stands atop the precipice of all mankind, her blades ever at the ready. Her eyes shall never behold this world until the time of destiny is nigh.",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Row(
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
                      Row(
                          children: [
                            Expanded(
                            child: Text(
                              "Yushan Enigma: \nKnock back enemies ahead. \n-Can be used under attack.\n\n"
                                  "Yushan Enigma: Lockdown: \nAttack enemies ahead and ban their skill and ultimate.\n\n"
                                  "Yushan Enigma: Enfeeble: \nKnock enemies ahead into the air, dealing high damage and reducing their recovery effect.",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                              ),
                            ),
                            SizedBox(width: 20),
                            Expanded(
                                child: Text("Twighlight Crimson: \nSummon Moonbane's Eye "
                                    "to stun nearby enemies for a relatively longer time. "
                                    "-Marked enemies cannot use Grappling Hook."
                                    "-Viper Ning cannot attack during summoning.\n\n"
                                    "Twighlight Crimson: Seal: \nSummon Moonbane's Eye to stun nearby enemies."
                                    "\n-Marked enemies cannot use Skill, Ultimate and Grappling Hook. "
                                    "\n-Viper Ning cannot attack during summoning.\n\n"
                                    "Twilight Crimson: Unchained:\n"
                                    "Summon Moonbane's Eye to deal damage to nearby enemies.\n"
                                    "-Marked enemies cannot use Skill, Ultimate and Grappling Hook.\n"
                                    "-Viper Ning can move freely during summoning.",

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
