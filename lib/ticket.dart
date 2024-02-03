import 'package:flutter/material.dart';

class Ticket extends StatelessWidget {
  const Ticket({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding:const EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(children: [
          const  SizedBox(height: 33,),
           const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                    Text('Tickets',style: TextStyle(fontSize: 33,fontWeight: FontWeight.bold),),
                    Image(image: AssetImage('assets/star.png'),width: 50,)],),Icon(Icons.menu)],),
          Container(
            width: MediaQuery.of(context).size.height,
            height: MediaQuery.of(context).size.height-200,
            decoration: BoxDecoration(color: Colors.black,borderRadius:BorderRadius.circular(45) ),
            child: Padding(
              padding:const  EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              const  Text('The Killers',style: TextStyle(color: Colors.white,fontSize: 33),),
              const  Text('Mad Cool Fetival',style: TextStyle(color: Colors.white,fontSize: 15),),
             const   Divider(),
              const  SizedBox(height: 20,),
             const   Text('Madrid.Spain',style: TextStyle(color: Colors.white,fontSize: 20),),
              const  Text('Place',style: TextStyle(color: Colors.white,fontSize: 10),),
             const   SizedBox(height: 20,),
               const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                  Column(children: [
                    Text('8',style: TextStyle(color: Colors.white,fontSize: 15)),
                    Text('Row',style: TextStyle(color: Colors.white,fontSize: 15)),
                    ],),
                    Column(children: [
                    Text('8',style: TextStyle(color: Colors.white,fontSize: 15)),
                    Text('Row',style: TextStyle(color: Colors.white,fontSize: 15)),
                    ],),
                ],),
                           const     Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                  Column(children: [
                    Text('8',style: TextStyle(color: Colors.white,fontSize: 15)),
                    Text('Row',style: TextStyle(color: Colors.white,fontSize: 15)),
                    ],),
                    Column(children: [
                    Text('8',style: TextStyle(color: Colors.white,fontSize: 15)),
                    Text('Row',style: TextStyle(color: Colors.white,fontSize: 15)),
                    ],),
                ],),
               const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 200,
                      height: 75,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      color: Colors.white
                    ),
                    child:const Row(children: [
                      Text('Scan\nBar Code',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      Expanded(child: Image(image: AssetImage('assets/barcode.png')))
                    ],),
                    ),
                  ],
                )
                ],),
            ),
            )
          ]),
        ),
      ),
    );
  }
}
