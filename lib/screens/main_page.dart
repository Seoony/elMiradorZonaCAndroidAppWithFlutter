import 'package:el_mirador_zonac_androidapp/screens/nav_pages/asistencia_page.dart';
import 'package:el_mirador_zonac_androidapp/screens/nav_pages/home_page.dart';
import 'package:el_mirador_zonac_androidapp/screens/nav_pages/me_page.dart';
import 'package:el_mirador_zonac_androidapp/screens/nav_pages/pagos_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  List pages = [
    const HomePage(),
    const PagosPage(),
    const AsistenciaPage(),
    const MePage()
  ];
  int currentIndex = 0;
  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: pages[currentIndex],
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF66B7F5),
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: bottonNavBar(),
    );
  }

  BottomNavigationBar bottonNavBar() {
    return BottomNavigationBar(
      onTap: onTabTapped,
      currentIndex: currentIndex,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.black54,
      unselectedItemColor: Colors.grey.withOpacity(0.5),
      showUnselectedLabels: true,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Inicio',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_balance),
          label: 'Pagos',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_month),
          label: 'Asistencia',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Perfil'),
      ],
    );
  }
  AppBar appBar(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: const Text('El Mirador Zona C'),
    );
  }
}