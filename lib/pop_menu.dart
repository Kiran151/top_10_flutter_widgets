import 'package:flutter/material.dart';

enum MenuItem {
  item1,
  item2,
  item3,
  item4,
  item5,
}

class Pop extends StatefulWidget {
  const Pop({super.key});

  @override
  State<Pop> createState() => _PopState();
}

class _PopState extends State<Pop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Popup Menu'),
        actions: [
          PopupMenuButton<MenuItem>(
              onSelected: (value) {
                if (value == MenuItem.item1) {
                  // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Page1()));

                } else if (value == MenuItem.item2) {
                } else if (value == MenuItem.item3) {
                } else if (value == MenuItem.item4) {
                } else if (value == MenuItem.item5) {}
              },
              itemBuilder: (context) => const [
                    PopupMenuItem(
                      value: MenuItem.item1,
                      child: Text('Item 1'),
                    ),
                    PopupMenuItem(
                      value: MenuItem.item2,
                      child: Text('Item 2'),
                    ),
                    PopupMenuItem(
                      value: MenuItem.item3,
                      child: Text('Item 3'),
                    ),
                    PopupMenuItem(
                      value: MenuItem.item4,
                      child: Text('Item 4'),
                    ),
                    PopupMenuItem(
                      value: MenuItem.item5,
                      child: Text('Item 5'),
                    ),
                  ])
        ],
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () => Navigator.of(context).popAndPushNamed('7'),
                icon: Icon(
                  Icons.keyboard_arrow_left,
                  size: 60,
                )),
            SizedBox(
              width: 20,
            ),
            IconButton(
                onPressed: () => Navigator.of(context).pushNamed('9'),
                icon: Icon(
                  Icons.keyboard_arrow_right,
                  size: 60,
                )),
          ],
        ),
      ),
    );
  }
}
