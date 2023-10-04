import 'package:flutter/material.dart';

class UpcomingMovies extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                Text("Upcoming movies",style: TextStyle(fontSize: 22,color: Colors.white,fontWeight: FontWeight.w500),),
                Text("See all",style: TextStyle(fontSize: 13,color: Colors.white54,fontWeight: FontWeight.w500),),
            ],
          ),
        ),
        SizedBox(height: 15,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for(int i=1; i<=8; i++)
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset("assets/images/mov$i.jpg",width: 280,height: 150,fit: BoxFit.cover,),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}