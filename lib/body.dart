import 'package:emotify/addphoto.dart';
import 'package:emotify/addsongs.dart';
import 'package:emotify/songPlaylist.dart';
import 'package:flutter/material.dart';


class MyBody extends StatefulWidget {
  @override
  _MyBodyState createState() => _MyBodyState();
}

class _MyBodyState extends State<MyBody> {

  int _currentIndex = 0;
  final List<Widget> _children= [
     SongPlaylist(),
     Photo(),
     AddSongs(),
  ];

void onTabBar(int index){
           setState(() {
                  _currentIndex = index;
            });
}
  @override
  Widget build(BuildContext context) {
        return new Scaffold(
          backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Emotify"),
      ),
      body:_children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
       showSelectedLabels: true,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
         onTap: onTabBar,
         currentIndex: _currentIndex,
        items:[
          BottomNavigationBarItem(
            icon:Icon(Icons.library_music,color: Colors.white ,),
            title: Text('songs',style: TextStyle(color:  Colors.white),),
         
          ),
          BottomNavigationBarItem(
            
            icon:Icon(Icons.camera,color: Colors.white ,),
            title: Text('camera',style: TextStyle(color:  Colors.white)),
          
          ),
           BottomNavigationBarItem(
            icon:Icon(Icons.add,color: Colors.white ,),
            title: Text('add Song',style: TextStyle(color:  Colors.white)),
            
          ),
        ],
        ),
    );
  }
}
