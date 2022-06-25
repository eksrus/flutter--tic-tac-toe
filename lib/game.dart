import 'package:flutter/foundation.dart';
import 'models/player.dart';

class Game{
  int _fieldSize;
  final List<List<String>> _field = [];
  final Player _player1;
  final Player _player2;
  bool _isPlayer1Move = true;
  final String X = 'x';
  final String O = 'o';
  Game(this._fieldSize, this._player1, this._player2){
    _createField();
  }
  void _createField(){
    for(int i=0; i<_fieldSize; i++)
      _field.add(List.filled(_fieldSize, ''));
  }
  void nextMove(int x, int y){
    x--;
    y--;
    if(x > _fieldSize || x < 0 || y > _fieldSize || y < 0)
      return;
    _field[x][y] = _isPlayer1Move ? X : O;
    _isPlayer1Move = !_isPlayer1Move;
  }
  Player? getWinner(){
    // Проверка по строкам
    final String winnerStringX = X * _fieldSize;
    final String winnerStringO = O * _fieldSize;
    String charsInARow = '';
    // Все горизонтальные выигрыши
    for(int i=0; i<_field.length; i++){
      charsInARow = '';
      for(int j=0; j<_field.length; j++)
        charsInARow += _field[i][j];
      if(charsInARow == winnerStringX)
        return _player1;
      else if(charsInARow == winnerStringO)
        return _player2;
    }
    // Все вертикальные выигрыши
    for(int i=0; i<_field.length; i++){
      charsInARow = '';
      for(int j=0; j<_field.length; j++)
        charsInARow += _field[j][i];
      if(charsInARow == winnerStringX)
        return _player1;
      else if(charsInARow == winnerStringO)
        return _player2;
    }
    // По диагонали \
    for(int i=0; i<_field.length; i++){
      charsInARow = '';
      for(int j=0; j<_field.length; j++)
        charsInARow += _field[j][j];
      if(charsInARow == winnerStringX)
        return _player1;
      else if(charsInARow == winnerStringO)
        return _player2;
    }
// 2, 0
// 1, 1
// 0, 2
    // По диагонали /
//     for(int i=_field.length - 1; i>=0; i--){
//       charsInARow = '';
//       for(int j=0; j<_field.length; j++)
//         charsInARow += _field[i][j];
// print('$winnerStringX ? $charsInARow\n');
//       if(charsInARow == winnerStringX)
//         return _player1;
//       else if(charsInARow == winnerStringO)
//         return _player2;
//     }
    return null;
  }
  // Map<int, int> getPhoneNextMoveCoords(){
  //   return <int, int>{1, 3};
  // }
  // bool gameIsFinished(){
  //   return false;
  // }
  String getFieldGraph(){
    String graph = '';
    String char = '';
    for(int i=0; i<_field.length; i++){
      graph += 'Row $i:     ';
      for(int j=0; j<_field[i].length; j++){
        char = _field[i][j].isNotEmpty ? _field[i][j] : ' ';
        graph += ' [$char]';
      }
      graph += '\n';
    }
    graph += '\n\n';
    return graph;
  }
}