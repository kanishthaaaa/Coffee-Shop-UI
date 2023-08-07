import 'package:coffee_shop/components/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget{
  const IntroPage({super.key});
//comment
  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SafeArea(child: Text('COFFEE RUN',
              style: GoogleFonts.poppins(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 240, 218, 218),
              )),),
              const SizedBox(height: 50,),
              Image.asset('lib/images/cup.png',
              height: 180,
              width: 180,),
              const SizedBox(height: 60,),
              Text('WORK\nSIP\nENJOY',
              style: GoogleFonts.josefinSans(
                letterSpacing: 2,
                fontSize: 65,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 240, 218, 218),
              ),),
              const SizedBox(height: 30,),
              Text('We believe that a cup of coffee is one of the simplest pleasures in life.',
              textAlign: TextAlign.left,
              style: GoogleFonts.poppins(
                fontSize: 23,
                color:const Color.fromARGB(255, 240, 218, 218),
                 ),),
              const SizedBox(height: 30,),
              MyButton(onTap: (){
                Navigator.pushNamed(context, '/menupage');
              }, myColor: const Color.fromARGB(255, 231, 99, 90), myText: 'Shop'),
            ],
          ),
        );
 
  }
}