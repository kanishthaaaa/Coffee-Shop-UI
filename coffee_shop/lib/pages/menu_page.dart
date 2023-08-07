import 'package:coffee_shop/components/coffee_tile.dart';
import 'package:coffee_shop/models/coffee.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuPage extends StatefulWidget{
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {

  List coffeeMenu = [
    Coffee(name: 'Classic Latte', price: '\$4', imagePath: 'lib/images/coffee-cup.png', rating: '4.8'),
    Coffee(name: 'Cold Brew', price: "\$3", imagePath: 'lib/images/iced-coffee.png', rating: '4.9')
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 244, 210, 210),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading:const Icon(Icons.menu,
        color: Colors.black,),
        title: Text('COFFEE RUN',
        style: GoogleFonts.poppins(
          fontSize: 23,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color:Color.fromARGB(255, 158, 65, 59),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal:15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('COFFEE DAY',
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[300],
                          ),),
                          Text('OFF 30%',
                          style: GoogleFonts.poppins(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 214, 211)
                          ),),
                          Text('Enjoy coffee with the latest\nvariants and get discounts',
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            color: Colors.grey[300]
                          ),),
                          const SizedBox(height: 10,),
                          Container(
                            height: 45,
                            width: 145,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              border: Border.all(
                                color: Colors.white,
                                width: 1
                              ),
                            ),
                            child: Center(
                              child: Text('Get Discount', 
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                color: Colors.white,
                              ),),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Image.asset('lib/images/latte-art.png',
                  height: 150,)
                ],
              ),
            ),
            const SizedBox(height: 15,),
            TextField(
              decoration: InputDecoration(
              hintText: 'Favourite coffee on run?',
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(40),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide:const BorderSide(
                    color: Colors.grey,
                  )
                ),
                
              ),
              
            ),
            const SizedBox(height: 15,),
            Text('Coffee Menu',
            style: GoogleFonts.poppins(
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),),
            const SizedBox(height: 15,),
            Expanded(child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: coffeeMenu.length,
              itemBuilder: ((context, index) => CoffeeTile(coffee: coffeeMenu[index])))),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('lib/images/cocoa.png',
                      height: 75,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Hot Cocoa',
                          style: GoogleFonts.poppins(
                            fontSize: 25,
                            fontWeight: FontWeight.bold),),
                           const SizedBox(
                              width: 160,
                              child: Row(
                                children: [
                                  Text('\$5'),
                                  Row(
                                    children: [
                                      Icon(Icons.star, 
                                      color:  Color.fromARGB(255, 225, 204, 11),),
                                      Text('5'),
                                    ],
                                  )
                                ],
                              ),
                            ),
                        ],
                      ),
                      const Icon(Icons.favorite_border_outlined,
                      size: 30,),
                    ],
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}