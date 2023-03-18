import 'dart:math';
import 'package:flutter/material.dart';
import 'package:tema3/checker.dart';
import 'package:tema3/custom_colors.dart';

class PopUp {
  CustomColors customColors = CustomColors();

  void showInfo({required BuildContext context}) {
    showDialog<Widget>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: customColors.topColor,
          content: const Text(
            'Introdu un numar si verifica daca este patrat perfect, cub perfect sau amandoua. '
            'Butoanele X\u{00B2} si X\u{00B3} ofera exemple de patrate perfecte respectiv '
            'cuburi perfecte.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 17, color: Colors.white),
          ),
          actions: <Widget>[
            Center(
              child: okButton(context: context),
            )
          ],
        );
      },
    );
  }

  void showPerfectSquare({required BuildContext context, required bool isPerfectSquare, required String titleNumber}) {
    int? number;
    int? sqrRoot;
    String title = 'nu este patrat perfect';
    String ecuation = 'Numarul nu are radacina patrata';
    if (isPerfectSquare) {
      number = int.parse(titleNumber); //super.controller.text
      sqrRoot = sqrt(number).toInt();
      title = 'este patrat perfect';
      ecuation = '$number = $sqrRoot * $sqrRoot';
    }

    showDialog<Widget>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: customColors.topColor,
          title: Text(
            '$titleNumber $title',
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 24, color: Colors.white),
          ),
          content: Text(
            ecuation,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 17, color: Colors.white),
          ),
          actions: <Widget>[
            Center(
              child: okButton(context: context),
            )
          ],
        );
      },
    );
  }

  void showPerfectCube({required BuildContext context, required bool isPerfectCube, required String titleNumber}) {
    int? number;
    int? cubeRoot;
    String title = 'nu este cub perfect';
    String ecuation = 'Numarul nu are radacina cubica';
    if (isPerfectCube) {
      number = int.parse(titleNumber);
      if (number > 0) {
        cubeRoot = pow(number, 1 / 3).round();
      } else {
        cubeRoot = pow(number.abs(), 1 / 3).round();
        cubeRoot = -cubeRoot;
      }
      ecuation = '$number = $cubeRoot * $cubeRoot * $cubeRoot';
      title = 'este cub perfect';
    }

    showDialog<Widget>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: customColors.topColor,
          title: Text(
            '$titleNumber $title',
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 24, color: Colors.white),
          ),
          content: Text(
            ecuation,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 17, color: Colors.white),
          ),
          actions: <Widget>[
            Center(
              child: okButton(context: context),
            ),
          ],
        );
      },
    );
  }

  void showAll({
    required BuildContext context,
    required bool isPerfectSquare,
    required bool isPerfectCube,
    required String titleNumber,
  }) {
    int? number;
    int? cubeRoot;
    int? sqrRoot;
    String? title;
    String? sqrEcuation;
    String? cubeEcuation;
    number = int.parse(titleNumber);

    if (isPerfectSquare) {
      sqrRoot = sqrt(number).toInt();
      title = 'este patrat perfect';
      sqrEcuation = '$number = $sqrRoot * $sqrRoot';
      if (isPerfectCube) {
        cubeRoot = Checker.getCubeRoot(number);
        title += ' si cub perfect.';
        cubeEcuation = '$number = $cubeRoot * $cubeRoot * $cubeRoot';
      } else {
        title += ' dar nu este cub perfect';
        cubeEcuation = 'Nu are radacina cubica';
      }
    } else if (!isPerfectSquare) {
      title = 'nu este patrat perfect';
      sqrEcuation = 'Nu are radacina patrata';
      if (isPerfectCube) {
        cubeRoot = Checker.getCubeRoot(number);
        title += ' dar este cub perfect.';
        cubeEcuation = '$number = $cubeRoot * $cubeRoot * $cubeRoot';
      } else {
        title += ' si nici cub perfect';
        cubeEcuation = 'Nu are radacina cubica';
      }
    }

    showDialog<Widget>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: customColors.topColor,
          title: Text(
            '$titleNumber $title',
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 24, color: Colors.white),
          ),
          content: Text(
            '$sqrEcuation\n$cubeEcuation',
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 17, color: Colors.white),
          ),
          actions: <Widget>[
            Center(
              child: okButton(context: context),
            )
          ],
        );
      },
    );
  }

  Widget? okButton({required BuildContext context}) {
    return TextButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      child: Container(
        height: 52,
        width: 70,
        decoration: BoxDecoration(
          color: customColors.buttonColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: customColors.bottomColor,
              spreadRadius: 3,
              blurRadius: 20,
              offset: const Offset(0, 14),
            )
          ],
        ),
        child: const Center(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              'Ok',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
