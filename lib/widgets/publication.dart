import 'package:dark_instagram/widgets/publication_header.dart';
import 'package:flutter/material.dart';

class Publication extends StatelessWidget {
  const Publication({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 450,
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xff252837),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        children: [
          PublicationHeader(),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20)
            ),
            child: ClipRRect(
              child: Image.asset('assets/perf4.jpg', fit: BoxFit.cover,),
              borderRadius: BorderRadius.circular(20),
            ),
          )
        ],
      ),
    );
  }
}