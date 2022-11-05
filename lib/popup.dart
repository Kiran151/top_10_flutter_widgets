import 'package:flutter/material.dart';

class Popup extends StatefulWidget {
  const Popup({super.key});

  @override
  State<Popup> createState() => _PopupState();
}

class _PopupState extends State<Popup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Popup'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text('my title'),
                          content: const Text('heyy this is an alert dialogue'),
                          actions: [
                            TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: const Text('Cancel')),
                            TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: const Text('Ok')),
                          ],
                        );
                      });
                },
                child: const Text('Open popup')),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
          ),
        ],
      ),
    );
  }
}
