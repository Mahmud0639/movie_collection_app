import 'package:flutter/material.dart';
import 'package:movie_app_list_05/widgets/custom_nav_bar.dart';

import '../widgets/movie_page_button.dart';
import '../widgets/recommended_movies.dart';

class MoviePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
        children: [
          Opacity(
              opacity: 0.3,
              child: Image.asset("assets/images/mov3.jpg",height: 165,width: double.infinity,fit: BoxFit.cover,)),
          SingleChildScrollView(
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.symmetric(horizontal: 25,vertical: 20),child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Icon(Icons.arrow_back,color: Colors.white,),
                        ),
                        InkWell(
                          onTap: (){},
                          child: Icon(Icons.favorite_border_outlined,color: Colors.white,),
                        )
                      ],
                    ),),
                  SizedBox(height: 20,),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.3),
                                spreadRadius: 0.5,
                                blurRadius: 4
                              )
                            ]
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/mov3.jpg",width: 130,height: 160,fit: BoxFit.cover,),
                          ),
                        ),
                        Container(
                          width: 70,
                          height: 70,
                          margin: EdgeInsets.only(left: 60),
                          decoration: BoxDecoration(
                            color: Colors.red.withOpacity(0.7),
                            borderRadius: BorderRadius.circular(40),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 8
                              )
                            ]

                          ),
                          child: Icon(Icons.play_arrow,color: Colors.white,size: 42,),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  MoviePageButton(),
                  Padding(padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Blade Runner",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500,color: Colors.white),),
                        SizedBox(height: 5,),
                        Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",textAlign:TextAlign.justify,style: TextStyle(fontSize: 13,fontWeight: FontWeight.w200,color: Colors.white54),)
                      ],
                    ),),
                  SizedBox(height: 5,),
                  RecommendedMovies()
                ],
              ),
            ),
          )
        ],
      ),

      bottomNavigationBar: CustomNavBar(),
    );
  }
}