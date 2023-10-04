import 'package:flutter/material.dart';

import '../widgets/custom_nav_bar.dart';
import '../widgets/new_movies.dart';
import '../widgets/upcoming_movies.dart';

class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.symmetric(vertical: 18,horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hello Saiful",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 22),),
                        Text("What to watch?",style: TextStyle(color: Colors.white54,fontWeight: FontWeight.w500,fontSize: 14),)
                      ],
                    ),
                   // Spacer(),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset("assets/images/my_pic.jpg",width: 55,height: 55,fit: BoxFit.cover,),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.symmetric(horizontal: 10),
                //here if we only give the height then it's width automatically take all the available space of the screen horizontally
                decoration: BoxDecoration(
                  color: Color(0xFF292B37),
                  borderRadius: BorderRadius.circular(8)
                ),
                height: 55,
                child: Row(
                  children: [
                    Icon(Icons.search,color: Colors.white54,),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      width: 280,
                      child: TextFormField(
                        style: TextStyle(color: Colors.white54),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search",
                            hintStyle: TextStyle(color: Colors.white54)
                          ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 23,),
              UpcomingMovies(),
              SizedBox(height: 20,),
              NewMovies()
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}