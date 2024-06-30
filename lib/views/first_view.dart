import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class firstview extends StatefulWidget {
  const firstview({super.key});

  @override
  State<firstview> createState() => _firstviewState();
}

class _firstviewState extends State<firstview> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:  Scaffold(
      body: Column(
        children: [
          SizedBox(height:10),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
SvgPicture.asset(height:30 ,"assets/images/twitter_logo.svg",color: Colors.blue,),
        ],
      ),
       SizedBox(
        height: MediaQuery.sizeOf(context).height*0.4,
      ),
      const Padding(
        padding:  EdgeInsets.all(10),
        child: TextField(
          
         decoration: InputDecoration(
          hintText: "Email address",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.elliptical(10, 10))),
          contentPadding: EdgeInsets.only(left: 10,right: 10)),
        ),
      ),
      const Padding(
        padding:  EdgeInsets.all(10),
        child: TextField(
          
         decoration: InputDecoration(
          hintText: "Password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.elliptical(10, 10))),
          contentPadding: EdgeInsets.only(left: 10,right: 10)),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white)),
              onPressed: () {
              
            }, child:Text("Done",style: TextStyle(color: Colors.black),)),
          )
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Text("Already have an account?",style: TextStyle(color: Colors.white),),
        Text(" Login",style: TextStyle(color: Colors.blue),),
      ],)
        ],
      ),
      
      ),
    );
  }
}