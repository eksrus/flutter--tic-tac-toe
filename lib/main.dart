import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;
// Pages:
import '/pages/home_page.dart';
import '/pages/game_settings.dart';
import '/pages/game_page.dart';
// Widgets:
import 'widgets/cell.dart';
// import 'models/player.dart';
// Other:
import 'game.dart';

void main() {
  debugPaintSizeEnabled = true;
  // Game game = Game(3, Player('Aleksey', false), Player("Xiaomi", true));
  // Горизонталь
  // game.nextMove(3, 1);
  //   game.nextMove(2, 1);
  // game.nextMove(1, 2);
  //   game.nextMove(2, 2);
  // game.nextMove(1, 3);
  //   game.nextMove(2, 3);
  // Вертикаль
  // game.nextMove(1, 1);
  //   game.nextMove(1, 2);
  // game.nextMove(2, 1);
  //   game.nextMove(2, 2);
  // game.nextMove(3, 3);
  //   game.nextMove(3, 2);


  // Диагональ \
  // game.nextMove(1, 3); game.nextMove(1, 1);
  // game.nextMove(2, 2); game.nextMove(2, 3);
  // game.nextMove(3, 1); game.nextMove(3, 3);

  // Диагональ /
  // Player? winner = game.getWinner();
  // print(game.getFieldGraph());
  // if(winner != null){
  //   debugPrint('winner is ${winner.name}');
  //   return null;
  // }

  // game.nextMove(3, 3);
  // game.nextMove(2, 3);
  // game.nextMove(3, 3);
  runApp(const GameApp());
  // print('\nNo one won');
}

class GameApp extends StatelessWidget{
  const GameApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      // home: GameSettings(),
      // home: GamePage(),
    );
  }
}
