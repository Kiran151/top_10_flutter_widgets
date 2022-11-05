import 'package:flutter/material.dart';

class Drop extends StatefulWidget {
  const Drop({super.key});

  @override
  State<Drop> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Drop> {
  List<String> items = [
    'list1',
    'list2',
    'list3',
    'list4',
    'list5',
  ];
  String? selectedItem = 'list1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dropdown'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Center(
                child: SizedBox(
                  width: 200,
                  child: DropdownButtonFormField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(width: 3, color: Colors.blue),
                      )),
                      value: selectedItem,
                      items: items
                          .map((item) =>
                              DropdownMenuItem(value: item, child: Text(item)))
                          .toList(),
                      onChanged: (values) => setState(() {
                            selectedItem = values.toString();
                          })),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () =>
                          Navigator.of(context).popAndPushNamed('2'),
                      icon: Icon(
                        Icons.keyboard_arrow_left,
                        size: 60,
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  IconButton(
                      onPressed: () => Navigator.of(context).pushNamed('4'),
                      icon: Icon(
                        Icons.keyboard_arrow_right,
                        size: 60,
                      )),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
