import 'package:flutter/material.dart';

class RecommendedMovies extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        Padding(padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Recommended",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
            Text("See all",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500,color: Colors.white54),)
          ],
        ),
        ),
        SizedBox(height: 10,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for(int i=1; i<11; i++)
              Padding(padding: EdgeInsets.only(left: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset("assets/images/mov${i+1}.jpg",width: 130,height: 95,fit: BoxFit.cover,),
              ),)
            ],
          ),
        )
      ],
    );
  }
}