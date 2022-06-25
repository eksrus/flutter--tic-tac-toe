import 'package:flutter/material.dart';
// Widgets:
import '/widgets/cell.dart';
// 
import 'package:tic_tac_toe_2/game.dart';

class GamePage extends StatelessWidget{
  late Game _game;
  GamePage({Key? key, required Game game}): super(key: key){
    _game = game;
  }
  @override
  Widget build(BuildContext context){
    return Container(
      color: Colors.white,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Cell(1, 1),
                Cell(1, 2),
                Cell(1, 3),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Cell(2, 1),
                Cell(2, 2),
                Cell(2, 3)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Cell(3, 1),
                Cell(3, 2),
                Cell(3, 3)
              ],
            ),
          ],
        ),
    );
  }
}