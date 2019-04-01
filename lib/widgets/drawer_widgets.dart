import 'package:flutter/material.dart';
import 'package:spotter_on2/tile/DrawerTile.dart';

class DrawerWidgets extends StatelessWidget {

  final PageController _pageController;

  DrawerWidgets(this._pageController);

  BuildContext _context;

  //CONSTRUIMOS UM DEGRADE
  Widget _buildDrawerBack() => Container(
    decoration: BoxDecoration(
        gradient: LinearGradient(
            colors:
            [
              Theme.of(_context).primaryColor,

            ],

            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
        )
    ),
  );

  @override
  Widget build(BuildContext context) {
    this._context = context;
    return Drawer(
      child: Stack(
        children: <Widget>[
        //  _buildDrawerBack(),
          ListView(
            children: <Widget>[
              Container(
                color: Theme.of(_context).primaryColor,
                height: 170.0,
                padding: EdgeInsets.only(top: 20.0),
                child: Column(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: NetworkImage("https://evarejo.com/wp-content/uploads/2017/08/evarejo_homem_padrao.png"),
                      radius: 50.0,
                    ),
                    Text("Alysson",style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,)
                  ],
                ),
              ),


              DrawerTile(Icons.timeline, "TimeLine",_pageController,0),
              DrawerTile(Icons.web, "Ínicio",_pageController,1),
              DrawerTile(Icons.chat_bubble_outline, "Mensagens",_pageController,2),
              DrawerTile(Icons.vpn_lock, "Eventos",_pageController,3),
              DrawerTile(Icons.wb_sunny, "Forúm",_pageController,4),




            ],
          )
        ],
      ),
    );
  }
}
