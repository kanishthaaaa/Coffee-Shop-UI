import 'package:coffee_shop/models/coffee.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CoffeeTile extends StatelessWidget{
  final Coffee coffee;
  const CoffeeTile({super.key, required this.coffee});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
                  
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  margin: EdgeInsets.only(left: 8),
                  
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(coffee.imagePath,
                      height: 150,),
                      SizedBox(height: 15,),
                      Text(coffee.name,
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),),
                      SizedBox(
                        width: 180,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('\$'+coffee.price,
                            style: TextStyle(
                              fontWeight: FontWeight.bold
                            ),),
                            Row(
                              children: [
                                const Icon(Icons.star,
                                color: Color.fromARGB(255, 225, 204, 11),),
                                Text(coffee.rating),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
  }
}