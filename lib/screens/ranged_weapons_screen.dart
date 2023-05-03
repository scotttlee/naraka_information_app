import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RangedWeaponsScreen extends StatefulWidget {
  const RangedWeaponsScreen({Key? key}) : super(key: key);

  @override
  State<RangedWeaponsScreen> createState() => _RangedWeaponsScreenState();
}

class _RangedWeaponsScreenState extends State<RangedWeaponsScreen> {
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
            Center(child: Text('Repeating Crossbow', style: TextStyle(
                fontFamily: 'PermanentMarker',
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),)),
            Image.network('https://naraka.wiki/weapons/repeatable-crossbow.webp'),
            SizedBox(height: 20),
            Center(child: Text('Musket', style: TextStyle(
                fontFamily: 'PermanentMarker',
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.white
            ),)),
            Image.network('https://naraka.wiki/weapons/musket.webp'),
            SizedBox(height: 20),
            Center(child: Text('Cannon', style: TextStyle(
                fontFamily: 'PermanentMarker',
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.white
            ),)),
            Image.network('https://naraka.wiki/weapons/cannon.webp'),
            SizedBox(height: 20),
            Center(child: Text('Pistol', style: TextStyle(
                fontFamily: 'PermanentMarker',
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.white
            ),)),
            Image.network('https://naraka.wiki/weapons/pistol.webp'),
            SizedBox(height: 20),
            Center(child: Text('Bow', style: TextStyle(
                fontFamily: 'PermanentMarker',
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.white
            ),)),
            Image.network('https://naraka.wiki/weapons/bow.webp'),
            SizedBox(height: 20),
            Center(child: Text('Swarm', style: TextStyle(
                fontFamily: 'PermanentMarker',
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.white
            ),)),
            Image.network('https://naraka.wiki/weapons/swarm.webp'),
            SizedBox(height: 20),
            Center(child: Text('Flamebringer', style: TextStyle(
                fontFamily: 'PermanentMarker',
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.white
            ),)),
            Image.network('https://naraka.wiki/weapons/flamethrower.webp'),

            SizedBox(height: 50)
          ],
        )
        )
    );
  }
}