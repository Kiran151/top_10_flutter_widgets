import 'package:flutter/material.dart';

class Appbar extends StatefulWidget {
  const Appbar({super.key});

  @override
  State<Appbar> createState() => _AppbarState();
}

class _AppbarState extends State<Appbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('AppBar'),
        leading: const Icon(Icons.menu),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: Container(
            color: Colors.blue,
            height: 80,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
          ),
        ],
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: Text(
            'Top 10 flutter widgets',
            style: TextStyle(fontSize: 30),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () => Navigator.of(context).pushNamed(''),
                icon: Icon(
                  Icons.keyboard_arrow_left,
                  size: 60,
                )),
            SizedBox(
              width: 20,
            ),
            IconButton(
                onPressed: () => Navigator.of(context).pushNamed('2'),
                icon: Icon(
                  Icons.keyboard_arrow_right,
                  size: 60,
                )),
          ],
        )
      ]),
    );
  }
}
