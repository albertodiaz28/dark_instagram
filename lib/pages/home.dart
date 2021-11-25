import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:dark_instagram/widgets/history.dart';
import 'package:dark_instagram/widgets/publication.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1d1d29),
        elevation: 0,
        centerTitle: true,
        actions: [
          SizedBox(width: 20,),
          Icon(Icons.menu, size: 30,),
          Spacer(),
          Image.asset('assets/instagram.png', color: Colors.white,),
          Spacer(),
          Icon(Icons.mail_outline, size: 30,),
          SizedBox(width: 20,)
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            _Histories(),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Publication()
            ),
            
          ],
        ),
        decoration: BoxDecoration(
          color: Color(0xff1d1d29),
          border: Border.all(width: 0)
        ),
      ),
      bottomNavigationBar: _NavigationBar()
   );
  }
}

class _NavigationBar extends StatefulWidget {

  @override
  __NavigationBarState createState() => __NavigationBarState();
}

class __NavigationBarState extends State<_NavigationBar> {

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      items: [
        Icon(Icons.home, size: 30, color: Colors.white,),
        Icon(Icons.search, size: 30, color: Colors.white),
        Icon(Icons.add, size: 30, color: Colors.white),
        Icon(Icons.shopping_bag, size: 30, color: Colors.white),
        Icon(Icons.perm_identity, size: 30, color: Colors.white),
      ],
      color: Color(0xff252837),
      buttonBackgroundColor: Color(0xffc83996),
      backgroundColor: Color(0xff1d1d29),
      animationCurve: Curves.easeInOut,
      animationDuration: Duration(milliseconds: 600),
      onTap: (index) {
        setState(() {

        });
      },
      letIndexChange: (index) => true,

    );
  }
}

class _Histories extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(width: 15,),
          History(),
          History(imagen: 'assets/perf1.jpg'),
          History(imagen: 'assets/perf2.jpg'),
          History(imagen: 'assets/perf3.jpg'),
          History(imagen: 'assets/perf4.jpg'),
          History(imagen: 'assets/perf5.jpg'),
          History(imagen: 'assets/perf6.jpg'),
          History(imagen: 'assets/perf1.jpg'),
          History(imagen: 'assets/perf2.jpg'),
          History(imagen: 'assets/perf3.jpg'),
        ],
      ),
    );
  }
}