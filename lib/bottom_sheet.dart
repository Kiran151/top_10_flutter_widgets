import 'package:flutter/material.dart';

class BottomSheets extends StatefulWidget {
  const BottomSheets({super.key});

  @override
  State<BottomSheets> createState() => _BottomSheetsState();
}

class _BottomSheetsState extends State<BottomSheets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomSheet'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20),
                      ),
                    ),
                    builder: (context) {
                      return Center(
                        child: TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('Close')),
                      );
                    });
              },
              child: const Text('Open BottomSheet'),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () => Navigator.of(context).popAndPushNamed('4'),
                  icon: Icon(
                    Icons.keyboard_arrow_left,
                    size: 60,
                  )),
              SizedBox(
                width: 20,
              ),
              IconButton(
                  onPressed: () => Navigator.of(context).pushNamed('6'),
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
