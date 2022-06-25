import 'package:flutter/material.dart';
// Pages:
import 'package:tic_tac_toe_2/pages/game_page.dart';
// Models:
import '/models/player.dart';
// Other:
import '../game.dart';

class GameSettings extends StatelessWidget{
  GameSettings({Key? key}): super(key: key);
  @override
  Widget build(BuildContext context){
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            child: Text('3 x 3'),
            onPressed: (){
              Game game = Game(3, Player('Aleksey', false), Player("Xiaomi", true));
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => GamePage(game: game)
                )
              );
            }
          ),
          ElevatedButton(
            child: Text('4 x 4'),
            onPressed: (){
            }
          ),
          ElevatedButton(
            child: Text('5 x 5'),
            onPressed: (){
            }
          ),
        ],
      ),
    );
  }
}