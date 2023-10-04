import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app_list_05/widgets/custom_nav_bar.dart';

class CategoryPage extends StatelessWidget{

  @override
  Widget build(BuildContext context){

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.symmetric(vertical: 20,horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back,size: 24,color: Colors.white,),
                  ),
                  SizedBox(height: 15,),
                  Text("Discover",style: TextStyle(fontSize: 23,fontWeight: FontWeight.w500,color: Colors.white),)
                ],
              ),),
              Padding(padding: EdgeInsets.symmetric(horizontal: 15,vertical: 20),
              child: Column(
                children: [
                  for(int i=1; i<11; i++)
                  InkWell(
                    onTap: (){},
                    child: Padding(padding: EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/mov$i.jpg",width: 70,height: 90,fit: BoxFit.cover,),
                          ),
                          SizedBox(width: 10,),
                          Text("Category",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold,color: Colors.white),),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,)
                        ],
                      ),
                    ),
                  )
                ],
              ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}