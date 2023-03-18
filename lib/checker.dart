import 'dart:math';

class Checker {
  List<int> perfectSquares = <int>[1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  List<int> perfectCubes = <int>[1, 8, 27, 64, 125, 216, 343, 512, 729, 1000, -1, -8, -27, -64, -125, -216, -343];

  int perfectSquareExample() {
    return perfectSquares[Random.secure().nextInt(10)];
  }

  int perfectCubeExample() {
    return perfectCubes[Random.secure().nextInt(17)];
  }

  bool checkPerfectSquare(double number) {
    if (number >= 0) {
      for (int i = 0; i <= number; i++) {
        if (i * i == number) {
          return true;
        }
      }
      return false;
    }
    return false;
  }

  bool checkPerfectCube(double number) {
    for (int i = 0; i <= number.abs(); i++) {
      if (i * i * i == number.abs()) {
        return true;
      }
    }
    return false;
  }

  static int getCubeRoot(int number) {
    int? cubeRoot;
    if (number > 0) {
      cubeRoot = pow(number, 1 / 3).round();
    } else {
      cubeRoot = pow(number.abs(), 1 / 3).round();
      cubeRoot = -cubeRoot;
    }
    return cubeRoot;
  }
}
