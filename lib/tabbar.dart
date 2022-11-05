import 'package:flutter/material.dart';

class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(
                  onPressed: () => Navigator.of(context).popAndPushNamed('8'),
                  icon: Icon(
                    Icons.keyboard_arrow_left,
                    size: 60,
                  )),
              SizedBox(
                width: 20,
              ),
              IconButton(
                  onPressed: () => Navigator.of(context).pushNamed('10'),
                  icon: Icon(
                    Icons.keyboard_arrow_right,
                    size: 60,
                  )),
            ],
            title: const Text('Tabs'),
            bottom: const TabBar(tabs: [
              Tab(
                text: 'tab 1',
                icon: Icon(Icons.home),
              ),
              Tab(
                text: 'tab 2',
                icon: Icon(Icons.search),
              ),
              Tab(
                text: 'tab 3',
                icon: Icon(Icons.person),
              ),
            ]),
          ),
          body: const TabBarView(
            children: [
              Center(child: Text('Page 1')),
              Center(child: Text('Page 2')),
              Center(child: Text('Page 3')),
            ],
          ),
        ));
  }
}
