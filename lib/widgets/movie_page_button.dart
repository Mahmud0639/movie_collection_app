import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MoviePageButton extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Padding(padding: EdgeInsets.symmetric(horizontal: 40),
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xFF292B37),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF292B37).withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 5
                )
              ]
            ),
            child: Icon(Icons.add,color: Colors.white,),
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xFF292B37),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF292B37).withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 5
                )
              ]
            ),
            child: Icon(Icons.download,color: Colors.white,),
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xFF292B37),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF292B37).withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 5
                )
              ]
            ),
            child: Icon(Icons.favorite_border_outlined,color: Colors.white,),
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xFF292B37),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF292B37).withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 5
                )
              ]
            ),
            child: Icon(CupertinoIcons.share,color: Colors.white,),
          ),

        ],
      ),
    );
  }
}