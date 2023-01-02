import 'package:flutter/material.dart';

import 'pokemon_info.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  List<String> pokeImages = [
    '1.png',
    '2.png',
    '3.png',
    '4.png',
    '5.png',
    '6.png',
    '7.png',
    '8.png',
    '9.png',
    '10.png',
    '11.png',
    '12.png',
    '13.png',
    '14.png',
    '15.png',
    '16.png',
    '17.png',
    '18.png',
  ];
  List<String> pokeNames = [
    'Alligazel',
    'Elatric',
    'Pandita',
    'Parryss',
    'Venoling',
    'Magmakey',
    'Marshabura',
    'Megalo',
    'Hitmantis',
    'Magnettle',
    'Beaphy',
    'Bipix',
    'Chimpuzz',
    'Wolvairy',
    'Gladiapie',
    'Gromeleon',
    'Waradger',
    'Bellybara',
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.cyan,
          appBarTheme: const AppBarTheme(
        centerTitle: true,
        color: Color(0xFF00bcd4),
      )),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Poke App'),
          leading: const Icon(Icons.menu),
        ),
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: pokeImages.length,
          itemBuilder: (context, i) {
            return GestureDetector(
              onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (context) => Info(name: pokeNames[i], image: pokeImages[i],),));
              },
              child: Card(
                margin: const EdgeInsets.all(10),
                child: Column(children: [
                  Expanded(
                    child: Image.asset(
                      'images/${pokeImages[i]}',
                      height: 100,
                      width: 100,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(11.0),
                    child: Text(
                      pokeNames[i],
                      style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                ]),
              ),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: const Color(0xFF00bcd4),
          child: const Icon(Icons.refresh),
        ),
      ),
    );
  }
}
