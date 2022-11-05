import 'package:flutter/material.dart';

class ExpansionTiles extends StatefulWidget {
  const ExpansionTiles({super.key});

  @override
  State<ExpansionTiles> createState() => _ExpansionTilesState();
}

class _ExpansionTilesState extends State<ExpansionTiles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ExpansionTile'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ExpansionTile(
              title: const Text('animals'),
              children: const [
                ListTile(
                  title: Text('cat'),
                  // onTap: (){},
                ),
                ListTile(
                  title: Text('dog'),
                  // onTap: (){},
                ),
                ListTile(
                  title: Text('tiger'),
                ),
                ListTile(
                  title: Text('lion'),
                ),
                ListTile(
                  title: Text('bear'),
                ),
              ],
              onExpansionChanged: (isExpanded) {
                // ignore: avoid_print
                print('Expanded:$isExpanded');
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () => Navigator.of(context).popAndPushNamed('5'),
                  icon: Icon(
                    Icons.keyboard_arrow_left,
                    size: 60,
                  )),
              SizedBox(
                width: 20,
              ),
              IconButton(
                  onPressed: () => Navigator.of(context).pushNamed('7'),
                  icon: Icon(
                    Icons.keyboard_arrow_right,
                    size: 60,
                  )),
            ],
          )
        ],
      ),
    );
  }
}
