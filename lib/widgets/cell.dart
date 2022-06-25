import 'package:flutter/material.dart';
import '../game.dart';

class Cell extends StatefulWidget{
  int _x, _y;
  Cell(this._x, this._y);
  @override
  CellState createState() => CellState('');
}


class CellState extends State{
  String _lastChar = '';
  final String xIconPath = 'assets/x.jpg';
  final String oIconPath = 'assets/o.jpg';
  CellState(String lastChar){
    _lastChar = lastChar;
  }
  @override
  Widget build(BuildContext context){
    return GestureDetector(
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Image.asset(_lastChar == "o" ? xIconPath : oIconPath).image,
            fit: BoxFit.cover
          ),
          color: Colors.white
        ),
        // color: _color == 'purple' ? Colors.purple : Colors.red,
      ),
      onTap: (){
        // _changeBgColor();
        setState((){
          if(_lastChar.isEmpty || _lastChar == 'o')
            _lastChar = 'x';
          else
            _lastChar = 'o';
        });
        //game.nextMove(2, 1);
      },
    );
  }
}