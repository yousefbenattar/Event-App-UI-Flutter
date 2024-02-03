import 'package:flutter/material.dart';

import 'page1.dart';
import 'pages.dart';
import 'ticket.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

int number = 0;
final List<Widget> _list = [
const  Page1(),
 const Page2(),
 const Ticket(),
 const Page4(),
];

void click(int index){
  setState(() {
    number = index;
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _list[number],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: number,
        onTap: click,
        items:const [
        BottomNavigationBarItem(label: '',icon: Icon(Icons.home,color: Colors.black,)),
        BottomNavigationBarItem(label: '',icon: Icon(Icons.location_on,color: Colors.black,)),
        BottomNavigationBarItem(label: '',icon: Icon(Icons.airplane_ticket_sharp,color: Colors.black,)),
        BottomNavigationBarItem(label: '',icon: Icon(Icons.supervised_user_circle,color: Colors.black,)),

      ]),
    );
  }
}