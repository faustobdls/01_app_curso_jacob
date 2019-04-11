import 'package:flutter/material.dart';


class UserWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          Container(
            width: 100,
            height: 100,
            child: ClipOval(
              child: Image.network(
                'https://pbs.twimg.com/profile_images/666122570777890816/UyAZPBfx_400x400.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Fausto Blanco',
            style: TextStyle(
                color: Colors.grey[800],
                fontSize: 24,
                fontWeight: FontWeight.bold),
          ),
          Text(
            'fausto.level@gmail.com',
            style: TextStyle(
                color: Colors.grey, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 30,
          ),
          Material(
            elevation: 10,
            color: Colors.black,
            textStyle: TextStyle(
              color: Colors.white
            ),
            borderRadius: BorderRadius.circular(40),
            child: InkWell(
              borderRadius: BorderRadius.circular(40),
              onTap: () {},
              child: Container(
                width: 200,
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(Icons.arrow_back, color: Material.of(context).color,),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      child: Text('Sair'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}