import 'package:flutter/material.dart';

class NewMovies extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        Padding(padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("New movies",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500,color: Colors.white),),
              Text("See all",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500,color: Colors.white),),
            ],
          ),
        ),
        SizedBox(height: 15,),
        SingleChildScrollView(
         scrollDirection: Axis.horizontal,
         child: Row(
           children: [
             for(int i=1; i<11; i++)
             GestureDetector(
               onTap: (){
                 Navigator.pushNamed(context, "moviePage");
               },
               child: Container(
                 width: 165,
                 height: 210,
                 margin: EdgeInsets.only(left: 10),
                 decoration: BoxDecoration(
                   color: Color(0xFF292B37),
                   borderRadius: BorderRadius.circular(10),
                   boxShadow: [
                     BoxShadow(
                       color: Color(0xFF292B37).withOpacity(0.3),
                       spreadRadius: 1,
                       blurRadius: 4
                     )
                   ]
                 ),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                        child: Image.asset("assets/images/mov${i+1}.jpg",fit: BoxFit.cover,height: 120,width: 165,),
                      ),
                     Padding(padding: EdgeInsets.symmetric(vertical: 10,horizontal: 8),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text("The Last Knight",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500,color: Colors.white),),
                         SizedBox(height: 3,),
                         Text("Action/Adventure",style: TextStyle(color: Colors.white54),),
                         SizedBox(height: 8,),
                         Row(
                           children: [
                             Icon(Icons.star,color: Colors.amber,size: 20,),
                             SizedBox(width: 5,),
                             Text("8.5",style: TextStyle(color: Colors.white54),)
                           ],
                         )
                       ],
                     ),)
                   ],
                 ),
               ),
             )
           ],
         )
    )

      ],
    );
  }
}