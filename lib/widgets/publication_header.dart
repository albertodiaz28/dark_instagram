import 'package:dark_instagram/widgets/history.dart';
import 'package:flutter/material.dart';

class PublicationHeader extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        History(imagen: 'assets/perf4.jpg', size: 40,),
        SizedBox(width: 10,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Wild Nature', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 15),),
            SizedBox(height: 4,),
            Text('Toledo, Spain', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300, fontSize: 12),)
          ],
        ),
        Spacer(),
        Icon(Icons.more_horiz_outlined, color: Colors.white,),
        SizedBox(width: 20,),              
      ],
    );
  }
}