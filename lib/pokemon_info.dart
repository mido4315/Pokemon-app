import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  String name;
  String image;

  Info({required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Scaffold(
      backgroundColor: const Color(0xFF00bcd4),
      appBar: AppBar(
        elevation: 0,
        title: Text(name),
      ),
      body: Center(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                color: Colors.white,
                height: height * 0.55,
                width: width * 0.82,
              ),
            ),
            Positioned(
              width: width * 0.82,
              bottom: height * 0.48,
              child: Image.asset(
                'images/$image',
                height: height * 0.15,
                width: height * 0.15,
              ),
            ),
            Positioned(
              top: height * 0.07,
              width: width * 0.82,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      name,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Height: 0.99m',
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Weight: 13kg',
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ),
                   const Padding(
                     padding: EdgeInsets.all(8.0),
                     child: Text('Types',style: TextStyle(fontWeight: FontWeight.bold),),
                   ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Card(color: Colors.amber,child: Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Text('Grass'),
                        ),),
                        Card(color: Colors.amber, child: Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Text('Poison'),
                        )),

                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Weakness',style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Card(color: Colors.red,child: Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text('Fire'),
                        ),),
                        Card(color: Colors.red, child: Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text('ICe'),
                        )),
                        Card(color: Colors.red,child: Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text('Flying'),
                        ),),
                        Card(color: Colors.red, child: Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text('Psychic'),
                        )),

                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Next Evolution',style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Card(color: Colors.green,child: Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Text('Venusaur'),
                        ),),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
