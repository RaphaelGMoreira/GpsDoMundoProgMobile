import 'package:flutter/material.dart';
import 'card1.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  @override

  //1// 7
  int _selectedIndex = 0;
  //8
  static List<Widget> pages = <Widget>[
    //TODO: substitua pelo Card1
    const Card1(),
    //TODO: substitua pelo Card2
    Container(color: Colors.green),
    //TODO: substitua pelo Card3
    Container(color: Colors.blue)
  ];
  // 9
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '🤡 Titulo maneiro',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        // 10
        currentIndex: _selectedIndex,
        // 11
        onTap: _onItemTapped,
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard), label: 'Card2'),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard), label: 'Card3'),
        ],
      ),
    );
  }
}
