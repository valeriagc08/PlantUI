
import '../plant_tile.dart';
import 'package:flutter/material.dart';
import '../model/data.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    
    return ListView(
          children:[
            Stack(
            children: [        
              Container(
                height: 350,
                decoration:  const BoxDecoration(
                  color: Color.fromARGB(255, 54, 138, 105),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.elliptical(200, 80),
                    bottomRight: Radius.elliptical(200, 80)
                  )
                  
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Center(
                  child: Column(
                    children: [  
                        const Text(
                          "Our Plants",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                         const Text(
                          "Look your favorites plants",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold
                            
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 30),
                          child: Text(
                            "Price: \$65   |  Size: Medium  |  Plant: Gimam",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                            ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Image.asset(
                            'lib/assets/imgen.png',
                            width: 150,
                            height: 150,
                          ),
                        ), 
                    ],
                  ),
                ),
              ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top:300, right: 300, left: 40),
                  child: Container(
                    height: 50,
                    width: 50,
                    
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 55, 121, 85),
                      borderRadius: BorderRadius.circular(100) 
                      ),
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.white),
                    ),
                ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top:300, right: 20,left: 270),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 55, 121, 85),
                      borderRadius: BorderRadius.circular(100) 
                      ),
                    child: const Icon(
                      Icons.arrow_forward,
                      color: Colors.white),
                    ),
                ),
            ),
            ],
            
          ),
          const Center(
            child: Text(
                "Explore More",
                style: TextStyle(
                  
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
          ),
          Center(
            child: Stack(
                children: [
                
                Container(
                        width: 220,
                        height: 40,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Color.fromARGB(255, 208, 206, 206),
                        ),
                        child: const  TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(10),
                            hintText: "Search",
                            suffixIcon: Icon(Icons.search,
                            color: Colors.green,),
                          ),
                          //style: TextStyle(color: Colors.green),
                      ),           
                      ),
                 ],
              ),
          ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            //color: Color.fromARGB(255, 43, 101, 75),
            height: 230,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: listPlants.length,
              itemBuilder: (BuildContext context, index){
                return InkWell( 
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=> PlantTile(plant: listPlants[index],)));
                  },
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 70,left: 10),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(255, 39, 111, 87),
                            ),
                          
                          height: 140,
                          width: 140,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom:80, left: 7),
                        child: ClipRRect(
                              child: Image.asset(
                                  listPlants[index].plantImage!,
                                  width: 150,
                                  height: 1500,
                                  //fit: BoxFit.cover,
                                ),
                            ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 150, left: 45),
                        child: Column(
                          children: [
                            Text( listPlants[index].family!, style: const TextStyle(
                              fontSize: 15,
                              fontWeight:FontWeight.bold,
                              color: Colors.white
                            ),),
                            Text(listPlants[index].price!, style: const TextStyle(
                              fontSize: 15,
                              fontWeight:FontWeight.bold,
                              color: Colors.white
                            ),),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }
              ),
          ),
        )
        
        ]
        ); 
  }
}