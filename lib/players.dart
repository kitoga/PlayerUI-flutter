import 'package:flutter/material.dart';
import './models/models.dart';


class Players extends StatelessWidget {
  
final List<Player> players = [
    Player(
      number: '1',
      name: 'Panda',
      point: 20500,
      pName: 'points'
    ),
    Player(
      number: '2',
      name: 'Desmond Okpor',
      point: 12900,
      pName: 'points'
    ),
    Player(
      number: '3',
      name: 'Munchee',
      point: 10990,
      pName: 'points'
    ),
    Player(
      number: '4',
      name: 'Theodore Abibo',
      point: 7698,
      pName: 'points'
    ),
    Player(
      number: '5',
      name: 'David Gbassa',
      point: 5367,
      pName: 'points'
    ),
    Player(
      number: '6',
      name: 'Tomisin',
      point: 4556,
      pName: 'points'
    ),
    Player(
      number: '7',
      name: ' Alfe Beast',
      point: 4320,
      pName: 'points'
    ),Player(
      number: '8',
      name: 'Uche',
      point: 4111,
      pName: 'points'
    ),Player(
      number: '9',
      name: 'Chaly J',
      point: 3567,
      pName: 'points'
    ),Player(
      number: '10',
      name: 'Danye',
      point: 3343,
      pName: 'points'
    ),Player(
      number: '11',
      name: 'Odudu',
      point: 3002,
      pName: 'points'
    ),Player(
      number: '12',
      name: 'Nonso',
      point: 2000,
      pName: 'points'
    ),Player(
      number: '13',
      name: 'Huncho Vibes',
      point: 1780,
      pName: 'points'
    )

  ];
  @override
  Widget build(BuildContext context) {
    return Container(
          height: 290,
          
      child: SingleChildScrollView(
              child: Column(
              children: players.map((tx){
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      bottomRight:Radius.circular(30) 
                      )
                  ),
                  elevation: 5,
                  color: Colors.pinkAccent,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(25, 8, 25, 8),
                    child: Row(
                      children: <Widget>[
                        Text(tx.number,
                           style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16
                            ),
                        ),
                        SizedBox(width: 15,),
                        Text(tx.name,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                         ),
                        Spacer(),
                        Column(
                          children: <Widget>[
                            Text(tx.pName,
                               style: TextStyle(
                              color: Colors.black54,
                            ),
                          ),
                            SizedBox(height: 1,),
                            Text(tx.point.toString(),
                              style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                            ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                );
              }).toList()
        ),
      ),
    );
  }
}