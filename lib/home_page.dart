import 'package:flutter/material.dart';
import 'package:project_uts_pemo/drawer.dart';
import 'package:project_uts_pemo/product_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isDarkModeEnabled = false;

  void _onDarkModeSwitchChanged(bool value) {
    setState(() {
      _isDarkModeEnabled = value;
    });
  }

  bool selected = false;
  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;

    Widget header() {
      return Container(
        margin: const EdgeInsets.all(
          30.0,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text(
                    'Hello Elvin',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    '@elvinpratama',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  selected = !selected;
                });
              },
              child: AnimatedContainer(
                decoration: BoxDecoration(
                  color: selected ? Colors.black : Colors.orange,
                  borderRadius: BorderRadius.circular(8),
                ),
                duration: const Duration(seconds: 1),
                padding: const EdgeInsets.all(18),
                child: const Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget Slogan() {
      return Container(
        margin: const EdgeInsetsDirectional.only(
          top: 10.0,
          start: 30.0,
          end: 30.0,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text(
                    'Meet Your Other Half',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      hintText: "Search guitar",
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget Product() {
      return Container(
        margin: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Text(
              "Product",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ProductCard(),
            ProductCard(),
            ProductCard(),
            ProductCard(),
          ],
        ),
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _isDarkModeEnabled ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        body: ListView(
          children: [
            header(),
            Slogan(),
            Product(),
          ],
        ),
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: const Text(
            'Garasi Gitar',
          ),
        ),
        drawer: DrawerWidget(
          isDarkModeEnabled: _isDarkModeEnabled,
          onDarkModeSwitchChanged: _onDarkModeSwitchChanged,
        ),
      ),
    );
  }
}
