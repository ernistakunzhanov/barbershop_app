import 'package:barbershop_app/app/presentation/home/home_view.dart';
import 'package:barbershop_app/app/presentation/my_notes/my_notes_view.dart';
import 'package:barbershop_app/app/presentation/photo/photo_view.dart';
import 'package:barbershop_app/app/widgets/bg_main_fon.dart';
import 'package:flutter/material.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _selectedIndex = 1;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _views = <Widget>[
    const MyNotesView(),
    const HomeView(),
    const PhotoView(),
  ];
  @override
  Widget build(BuildContext context) {
    return BgMainFon(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: _views[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.white,
          selectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
          unselectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
          selectedItemColor: Colors.white,
          backgroundColor: Colors.black.withOpacity(0.2),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.key_sharp),
              label: 'МОИ ЗАПИСИ',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_add),
              label: 'ЗАПИСАТЬСЯ',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.camera_alt),
              label: 'ФОТО',
            ),
          ],
          currentIndex: _selectedIndex,
          // selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
