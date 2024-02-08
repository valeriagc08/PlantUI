import 'package:flutter/material.dart';
import '../model/data.dart';

class PlantTile extends StatelessWidget {
  final Plant plant;
  
  const PlantTile({Key? key, required this.plant}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  ListView(
          children: [
            Stack(
              children:[ 
                Container(
                  height: 110,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 53, 126, 94),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.elliptical(200, 80),
                        bottomRight: Radius.elliptical(200, 80)
                      ),
                  )
                   ),
                  const Padding(
                    padding: EdgeInsets.only(top:50.0),
                    child: Center(
                      child: Text('Details',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                      ),),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 140),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Family',style: TextStyle(fontWeight: FontWeight.bold),),
                            Text(plant.family??'', style: const TextStyle(color: Color.fromARGB(255, 60, 176, 106), fontWeight: FontWeight.bold),),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Size',style: TextStyle(fontWeight: FontWeight.bold),),
                            Text(plant.size??'',style: const TextStyle(color: Color.fromARGB(255, 60, 176, 106), fontWeight: FontWeight.bold),),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Category',style: TextStyle(fontWeight: FontWeight.bold),),
                            Text(plant.category??'',style: const TextStyle(color: Color.fromARGB(255, 60, 176, 106), fontWeight: FontWeight.bold),),
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 210),
                    child: Center(
                      child: Container(
                        width: 350,
                        height: 350,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(200),
                          color: Color.fromARGB(255, 219, 219, 219)
                        ),
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 220),
                      child: Center(child: Image.asset(plant.plantImage!,width: 270, )),
                   ),

                  Padding(
                    padding: const EdgeInsets.only(top: 440, left: 200),
                    child: Container(
                      height: 70,
                      width: 200,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 53, 126, 94),
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), topLeft: Radius.circular(30))
                      ),
                      child: Center(child: Text('Price: ${plant.price??''}',
                      style: const TextStyle(
                        color: Colors.white, 
                        fontSize: 18, 
                        fontWeight: FontWeight.bold),
                        )
                      ),
                     ),
                  ),
                IconButton(
                  icon: Icon(Icons.arrow_back_ios,color: Colors.white,),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ]
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 10,right: 10, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Details' ,
                  style: TextStyle(
                    color: Colors.black, 
                    fontSize: 25, 
                    fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(plant.details??'', 
                  style: const TextStyle(
                    color: Colors.black, 
                    fontSize: 12, 
                    fontWeight: FontWeight.bold)),
                ],
              ),
            )

        

            // Aquí puedes agregar más widgets para mostrar información sobre la planta
          ],
        ),

    );
  }
}