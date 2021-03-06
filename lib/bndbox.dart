import 'package:flutter/material.dart';



class BndBox extends StatelessWidget {
  final List<dynamic> results;
  final double screenH;
  final double screenW;


  BndBox(this.results, this.screenH, this.screenW);

  @override
  Widget build(BuildContext context) {

    List<Widget> _renderStrings() {
      double offset = -10;
      return results.map((re) {
        offset = offset + 140;
        return Positioned(
          left: 130,
          top: offset,
          width: screenW,
          height: screenH,
          child: Text(
            "${re["label"]} ${(re["confidence"] * 100).toStringAsFixed(0)}%",
            style: TextStyle(
              color: Color.fromRGBO(37, 213, 253, 1.0),
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      }).toList();
    }



    return Stack(
      children: _renderStrings()
    );
  }
}