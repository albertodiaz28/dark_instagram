import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class History extends StatelessWidget {
  final String imagen;
  final double size;

  const History({this.imagen = '', this.size = 60});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      margin: EdgeInsets.symmetric(horizontal: 4),
      child: OutlineGradientButton(
        radius: Radius.circular(25),
        gradient: LinearGradient(
          colors: (this.imagen != '') ? [Color(0xfff9a967), Color(0xffc83996)] : [Colors.white38, Colors.white38],
          begin: Alignment(-1,1),
          end: Alignment(1,-1)
        ),
        padding: EdgeInsets.all(4),
        strokeWidth: 2,
        child: Container(
          child: (this.imagen != '') 
            ? ClipRRect(
                        child: Image.asset(imagen, height: this.size, fit: BoxFit.cover,),
                        borderRadius: BorderRadius.all(Radius.circular(25))
                        ) 
            : Icon(Icons.add, color: Colors.white,),
          height: this.size,
          width: this.size
        ),
      ),
    );
  }
}