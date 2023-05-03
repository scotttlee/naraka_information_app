import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MeleeWeaponsScreen extends StatefulWidget {
  const MeleeWeaponsScreen({Key? key}) : super(key: key);

  @override
  State<MeleeWeaponsScreen> createState() => _MeleeWeaponsScreenState();
}

class _MeleeWeaponsScreenState extends State<MeleeWeaponsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF999999),
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
        ),
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://cdn.wallpapersafari.com/8/93/ypj2WC.png"),
                  fit: BoxFit.cover

              ),
            ),
            child: ListView(
              children: <Widget>[
                SizedBox(height: 20),
                Center(child: Text('Longsword', style: TextStyle(
                    fontFamily: 'PermanentMarker',
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),)),
                Image.network('https://naraka.wiki/weapons/longsword.webp'),
                SizedBox(height: 20),
                Center(child: Text('Katana', style: TextStyle(
                    fontFamily: 'PermanentMarker',
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),)),
                Image.network('https://naraka.wiki/weapons/katana.webp'),
                SizedBox(height: 20),
                Center(child: Text('Greatsword', style: TextStyle(
                    fontFamily: 'PermanentMarker',
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),)),
                Image.network('https://naraka.wiki/weapons/greatsword.webp'),
                SizedBox(height: 20),
                Center(child: Text('Polesword', style: TextStyle(
                    fontFamily: 'PermanentMarker',
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),)),
                Image.network('https://naraka.wiki/weapons/polesword.png'),
                SizedBox(height: 20),
                Center(child: Text('Spear', style: TextStyle(
                    fontFamily: 'PermanentMarker',
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),)),
                Image.network('https://naraka.wiki/weapons/spear.webp'),
                SizedBox(height: 20),
                Center(child: Text('Staff', style: TextStyle(
                    fontFamily: 'PermanentMarker',
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),)),
                Image.network('https://naraka.wiki/weapons/staff.png'),
                SizedBox(height: 20),
                Center(child: Text('Dagger', style: TextStyle(
                    fontFamily: 'PermanentMarker',
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),)),
                Image.network('https://naraka.wiki/weapons/dagger.webp'),
                SizedBox(height: 20),
                Center(child: Text('Dual Blades', style: TextStyle(
                    fontFamily: 'PermanentMarker',
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),)),
                Image.network('https://naraka.wiki/weapons/dual-blades.webp'),
                SizedBox(height: 20),
                Center(child: Text('Nunchucks', style: TextStyle(
                    fontFamily: 'PermanentMarker',
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),)),
                Image.network('https://naraka.wiki/weapons/nunchucks.webp'),
                SizedBox(height: 20),
                Center(child: Text('Bloodrippers', style: TextStyle(
                    fontFamily: 'PermanentMarker',
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),)),
                Image.network('https://naraka.wiki/weapons/bloodripper.webp'),

                SizedBox(height: 50)
              ],
            )
        )
    );
  }
}
