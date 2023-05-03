import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ZipingScreen extends StatefulWidget {
  const ZipingScreen({Key? key}) : super(key: key);

  @override
  State<ZipingScreen> createState() => _ZipingScreenState();
}

class _ZipingScreenState extends State<ZipingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFcbffac),
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
                    color: Color(0xFFcbffac),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        child: Column(
                          children: [
                            Text('Ziping Yin',
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
                                    image: NetworkImage('https://naraka.wiki/characters/full/ziping-yin.webp')
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
                      const Text("Gifted and selfless, she gives her all in healing and treating anyone in need."
                        "Such is her medical skill that you'd be forgiven for thinking just her presence alone can heal the sick, or return the fallen from their eternal slumber.",
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
                                "Aromatherapy: \n Unleash Spiritual Twigs, the ally who touches them first instantly restore some Health and Armor,"
                                    "then constantly restore and gain Damage Reduction within 5 sec.\n\n"
                                    "Aromatherapy: Embrace: \n Unleash Spiritual Twigs, the ally who touches them first instantly restore some Health and Armor,"
                                    "and be prevented from being interrupted by non-Focus strike for a short period\n\n"
                                    "Aromatherapy: Protection: \n Use Ligneous Energy to protect Ziping ald all allies nearby, being immune to interruption from all"
                                    "non-Focus strikes for a short period.",

                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(width: 20),
                            Expanded(
                                child: Text("Saving Grace: \n With full Rage, automatically negate one fatal strike by consuming all rage. \n"
                                    "Or cast it with 70% Rage to increase the recovery effect and restore Health and Armor of all allies by constantly consuming Rage.\n\n"
                                    "Saving Grace: Aegis: \n Cast it with 70% rage to restore Health and Armor of all allies by constantly consuming Rage. \n"
                                    "Protect each ally from one fatal strike with no Rage cost.\n\n"
                                    "Saving Grace: Gauze: \n Cast it with 50% Rage to form a zone around Ziping that constantly consumes Rage.\n"
                                    "Allies inside will not run out of Health from taking damage (except for damage from Shadow Corruption), and will"
                                    "restore a certain amount of Health once the zone disappears.",

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
