import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget{
  final String myText;
  final Color myColor;
  final Function()? onTap;
  const MyButton({super.key, required this.onTap, required this.myColor, required this.myText});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: myColor,
                  ),
                  child: Center(child: Text(myText,
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    color:const Color.fromARGB(255, 240, 218, 218),
                  ),)),
                ),
    );
  }
}