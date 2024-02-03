import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
            const SizedBox(height: 20,),
            Container(
                margin:const EdgeInsets.only(right: 20, left: 20),
                child:const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Tickets',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        Image(
                          image: AssetImage('assets/star.png'),
                          width: 30,
                        )
                      ],
                    ),
                    Icon(Icons.menu)
                  ],
                ),
              )
           ,const SizedBox(height: 20,),
            Container(
                margin: const EdgeInsets.only(right: 20, left: 20),
                child: const CupertinoSearchTextField(
                  prefixIcon: Icon(Icons.search),
                  placeholder: 'Search events',
                ),
              )
           ,const SizedBox(height: 10,),
            Container(
            margin: const EdgeInsets.only(right: 20, left: 20),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                    Text('15.09',
                        style: TextStyle(
                            fontSize: 50, fontWeight: FontWeight.bold)),
                    Text('Mon',
                        style:
                            TextStyle(fontSize: 50, fontWeight: FontWeight.bold)),
                  ],
                ),
          ),
            const SizedBox(height: 10,),
            Container(
                decoration: BoxDecoration(
                  image:const DecorationImage(image: AssetImage('assets/img_1.jpg'),fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.grey,
                ),
                margin:const EdgeInsets.only(left: 10, right: 10),
                height: 250,
                width: MediaQuery.of(context).size.width,
                child: Container(
                  margin:const EdgeInsets.all(10),
                  height: 200,
                  width: MediaQuery.of(context).size.width - 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.white, width: 2)),
                child:const Padding(
                  padding:  EdgeInsets.all(12.0),
                  child:  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Row(children: [Text('The Killer',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),)],),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [Text('Madrid,Spain',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),)],),
                  ]),
                ),
                
                ),
              )
           ,const SizedBox(height: 20,),
             ListView(
              physics:const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children:const [
            ListTile(
              title: Text('test'),
              subtitle: Text('test'),
              trailing: Icon(Icons.arrow_circle_right),
              
            ),
            Divider(),
            ListTile(
              title: Text('test'),
              subtitle: Text('test'),
              trailing: Icon(Icons.arrow_circle_right),
              
            ),
            Divider(),
            ListTile(
              title: Text('test'),
              subtitle: Text('test'),
              trailing: Icon(Icons.arrow_circle_right),
              
            ),
            Divider(),
           ],)
           ],
          ),
        ),
      ),
    );
  }
}
