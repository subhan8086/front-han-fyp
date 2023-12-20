import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fyp_pro/screen/Add.dart';
import 'package:fyp_pro/screen/category.dart';
import 'package:fyp_pro/screen/fvrt.dart';
import 'package:fyp_pro/screen/login.dart';
import 'package:fyp_pro/screen/profile.dart';


class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Center(
          child: Text(
            'Home ',
            style: TextStyle(color: Colors.white),
          ),
        ),
        leading: IconButton(
          icon: Tooltip(
              message: 'Log Out',
              child: Icon(Icons.logout),

          ),
          color: Colors.white,
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));
          },
        ),
      ),
      body: Center(
        child: Text('Welcome to Home Page'),
      ),
      bottomNavigationBar:
           BottomNavigationBar(
             backgroundColor: Colors.purple,
             selectedItemColor: Colors.purple,
             unselectedItemColor: Colors.grey,
             selectedLabelStyle: TextStyle(color: Colors.white),
             unselectedLabelStyle: TextStyle(color: Colors.purple),
            items: [
              BottomNavigationBarItem(
                icon: Tooltip(
                    message: 'Home',
                    child: InkWell(
                        onTap:  (){

                          Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
                        },
                        child: Icon(Icons.home))),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Tooltip(
                    message: 'Favorite',
                    child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>fvrt()));
                        },
                        child: Icon(Icons.favorite))),
                label: 'Favorites',
              ),
              BottomNavigationBarItem(
                icon: Tooltip(
                    message: 'Add',
                    child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>add()));
                        },
                        child: Icon(Icons.add))),
                label: 'Add',

              ),
              BottomNavigationBarItem(
                icon: Tooltip(
                    message: 'Category' ,
                    child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>category()));
                        },
                        child: Icon(Icons.category))),
                label: 'Categories',

              ),
              BottomNavigationBarItem(
                icon: Tooltip(
                    message: 'Profile',
                    child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>profile()));
                        },
                        child: Icon(Icons.person))),
                label: 'Profile',

              ),
            ],


          ),
        );


  }
}
