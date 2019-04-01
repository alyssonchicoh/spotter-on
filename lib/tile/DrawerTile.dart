import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {

  final IconData icon;
  final String text;
  final PageController _pageController;
  final int page;

  DrawerTile(this.icon,this.text,this._pageController,this.page);


  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: (){
          Navigator.of(context).pop();
          _pageController.jumpToPage(page);
        },
        child: Container(
          padding: EdgeInsets.only(left: 10.0),

          height: 60.0,
          child: Row(

            children: <Widget>[
              Icon(
                icon,
                size: 28.0,
                color: _pageController.page.round() == page? Colors.red : Colors.white,
              ),
              Container(
                padding: EdgeInsets.only(left: 5.0,right: 5.0),
              ),
              Text(
                text,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: _pageController.page.round() == page? Colors.red : Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}