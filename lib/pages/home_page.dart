import 'package:flutter/material.dart';
import 'package:reto1_donet_app_christian_rodriguez/icons/utils/my_tab.dart';
import 'package:reto1_donet_app_christian_rodriguez/tab/Burger_tab.dart';
import 'package:reto1_donet_app_christian_rodriguez/tab/Donut_tab.dart';
import 'package:reto1_donet_app_christian_rodriguez/tab/Pancakes_tab.dart';
import 'package:reto1_donet_app_christian_rodriguez/tab/Pizza_tab.dart';
import 'package:reto1_donet_app_christian_rodriguez/tab/Smoothie_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Widget> myTabs = [

  //Donut tab
  const MyTab(iconPath: 'lib/icons/donut.png'),

  //Burger tab
  const MyTab(iconPath: 'lib/icons/burger.png'),

  //Smoothie tab
  const MyTab(iconPath: 'lib/icons/smoothie.png'),

  //pancake tab
  const MyTab(iconPath: 'lib/icons/pancakes.png'),

  //pizza tab
  const MyTab(iconPath: 'lib/icons/pizza.png'),

  ];


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Padding(padding: const EdgeInsets.only(left:16.0),
          child: IconButton(icon: Icon(Icons.menu, color: Colors.grey[800],size:36,), onPressed: () {
            print('boton menu');
            },)
        ),
        actions: [ Padding(
          padding: const EdgeInsets.only(right:16.0),
          child: IconButton(icon: Icon(Icons.person, color: Colors.grey[800],size:36,), onPressed: () {
            print('otra cosa');
            },)
        ),
        ]
        ),
        body: Column(children: [
          const Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Text('I want to ',style: TextStyle(fontSize: 32),),
                   Text('Eat ',style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold, decoration: TextDecoration.underline),),
                ],
              ),
            ),
            //tap bar 
            TabBar(tabs: myTabs),
      
      
            //tap bar view
           const Expanded(child: TabBarView(children: [

            //donut tab
            DonutTab(),

             //Burger tab
            BurgerTab(),
            
             //Smoothie tab
            SmoothieTab(),

             //Pancake tab
            PancakesTab(),

             //pizza tab
            PizzaTab(),
      
            ]))


        ],)
      ),
    );
  }
}
