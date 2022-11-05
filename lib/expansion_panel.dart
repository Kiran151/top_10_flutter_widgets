import 'package:flutter/material.dart';

class Item {
  String header;
  String body;
  Item({required this.header, required this.body});
}

class Expansion extends StatefulWidget {
  const Expansion({super.key});

  @override
  State<Expansion> createState() => _ExpansionState();
}

class _ExpansionState extends State<Expansion> {
  bool isExpanded = false;
  static const loremIpsum = 'What is Lorem Ipsum in English';
  final List<Item> items = [
    Item(header: 'panel1', body: loremIpsum),
    Item(header: 'panel2', body: loremIpsum),
    Item(header: 'panel3', body: loremIpsum),
    Item(header: 'panel4', body: loremIpsum),
    Item(header: 'panel5', body: loremIpsum),
    Item(header: 'panel6', body: loremIpsum),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expansion Panel'),
      ),
      body: Column(
        children: [
          Center(
            child: SingleChildScrollView(
                child: ExpansionPanelList.radio(
              children: items
                  .map((item) => ExpansionPanelRadio(
                        canTapOnHeader: true,
                        value: item.header, //has to be unique.
                        headerBuilder: (context, isExpanded) => ListTile(
                          title: Text(item.header),
                        ),
                        body: ListTile(
                          title: Text(item.body),
                        ),
                      ))
                  .toList(),
            )),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () => Navigator.of(context).popAndPushNamed('3'),
                  icon: Icon(
                    Icons.keyboard_arrow_left,
                    size: 60,
                  )),
              SizedBox(
                width: 20,
              ),
              IconButton(
                  onPressed: () => Navigator.of(context).pushNamed('5'),
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
