import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MatariScreen extends StatefulWidget {
  const MatariScreen({Key? key}) : super(key: key);

  @override
  State<MatariScreen> createState() => _MatariScreenState();
}

class _MatariScreenState extends State<MatariScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFfff2cc),
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
                    color: Color(0xFFfff2cc),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        child: Column(
                          children: [
                            Text('Matari',
                              style: TextStyle(
                                  fontSize: 36,
                                  color: Colors.black,
                                  fontFamily: 'PermanentMarker',
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
                                    image: NetworkImage('https://naraka.win/images/characters/matari/matari.webp')
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
                      const Text("Her skills honed by the desert storms, Matari is as swift as a falcon. Reaching"
                          "new heights by mastering ancient secret art, she now roams the ruins like a phantom devil."
                          "She's a bewitching eidolon, yet a nightmare to aristocrats.",
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
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                                fontFamily: 'PermanentMarker',
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(width: 100),
                            Text("Ultimates",
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1,
                                  fontFamily: 'PermanentMarker',
                                  color: Colors.black,
                                ))
                          ]
                      ),
                      const Row(
                          children: [
                            Expanded(
                              child: Text(
                                "Silent Flutter: \nFlash towards the aimed direction and increase Attack. "
                                    "\n-Hold F to charge and flash farther.\n\n"
                                    "Silent Flutter: Rapid Flash: \nFlash towards the aimed direction and increase Attack. "
                                    "\n-Can flash twice.\n\n"
                                    "Silent Flutter: Retrace Flash: \nFlash towards the aimed direction and leave a marker on the spot."
                                    "Tap F again can return to the marker. "
                                    "\n-Can be used under attack.\n\n",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(width: 20),
                            Expanded(
                                child: Text("Unseen Wings: \nReset her own skill cooldown and grant all alies with [Stealth] for"
                                    "a relatively longer time.\n"
                                    "-During the ultimate, [Silent Flutter] flashes farther with faster cooldown.\n"
                                    "-Tap F to flash towards enemies' back and unleash a special attack.\n"
                                    "-Can be used under attack.\n\n"
                                    "Unseen Wings: Assassin: \nReset her own skill cooldown and grant all alies with [Stealth]\n"
                                    "-During the ultimate, [Silent Flutter] flashes farther with faster cooldown.\n"
                                    "-Tap F to flash towards enemies' back and unleash a special attack.\n"
                                    "-Increase Scale Rush damage of all alies.\n\n"
                                    "Unseen Wings: Smite: \nReset her own skill cooldown and grant all alies with [Stealth]\n"
                                    "-During the ultimate, [Silent Flutter] flashes farther with faster cooldown.\n"
                                    "-Tap F to flash towards enemies' back and unleash a special attack.\n"
                                    "-Allies can restore themselves by attacking enemies.",

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
