import 'package:flutter/material.dart';
import 'package:syreattire/screens/item_entry_form.dart';
import 'package:syreattire/widgets/item_card.dart';
import 'package:syreattire/widgets/left_drawer.dart';

class MyHomePage extends StatelessWidget {
  final String npm = '2306245882'; // NPM
  final String name = 'Naila Syarifa Yosarvi'; // Nama
  final String className = 'PBP B'; // Kelas

  final List<ItemHomepage> items = [
    ItemHomepage("Lihat Item", Icons.checkroom),
    ItemHomepage("Tambah Item", Icons.add),
    ItemHomepage("Logout", Icons.logout),
  ];

  // List warna untuk item-item pada grid
  final List<Color> itemColors = [
    const Color.fromARGB(255, 74, 56, 35),
    const Color.fromARGB(255, 111, 90, 64),
    const Color.fromARGB(208, 182, 161, 119),
  ];

  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'SyreAttire',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      drawer: const LeftDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InfoCard(title: 'NPM', content: npm),
                InfoCard(title: 'Name', content: name),
                InfoCard(title: 'Class', content: className),
              ],
            ),
            const SizedBox(height: 16.0),
            Center(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 16.0),
                    child: Text(
                      'Welcome to SyreAttire',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  GridView.count(
                    primary: true,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 3,
                    shrinkWrap: true,
                    children: items.asMap().entries.map((entry) {
                      int index = entry.key;
                      ItemHomepage item = entry.value;
                      Color color = itemColors[index % itemColors.length];
                      return ItemCard(item: item, color: color);
                    }).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  final String title;
  final String content;

  const InfoCard({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      child: Container(
        width: MediaQuery.of(context).size.width / 3.5,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            Text(content),
          ],
        ),
      ),
    );
  }
}
