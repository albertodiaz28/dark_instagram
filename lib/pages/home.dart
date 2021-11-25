import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';


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
              child: _Publication()
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

class _Publication extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 400,
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Color(0xff252837),
        borderRadius: BorderRadius.circular(20)
      ),
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
          _History(),
          _History(imagen: 'assets/perf1.jpg'),
          _History(imagen: 'assets/perf2.jpg'),
          _History(imagen: 'assets/perf3.jpg'),
          _History(imagen: 'assets/perf4.jpg'),
          _History(imagen: 'assets/perf5.jpg'),
          _History(imagen: 'assets/perf6.jpg'),
          _History(imagen: 'assets/perf1.jpg'),
          _History(imagen: 'assets/perf2.jpg'),
          _History(imagen: 'assets/perf3.jpg'),
        ],
      ),
    );
  }
}

class _History extends StatelessWidget {
  final String imagen;

  const _History({this.imagen = ''});

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
                        child: Image.asset(imagen, height: 60, fit: BoxFit.cover,),
                        borderRadius: BorderRadius.all(Radius.circular(25))
                        ) 
            : Icon(Icons.add, color: Colors.white,),
          height: 60,
          width: 60
        ),
      ),
    );
  }
}