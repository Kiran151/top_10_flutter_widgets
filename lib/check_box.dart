import 'package:flutter/material.dart';

class CheckBoxx extends StatefulWidget {
  const CheckBoxx({super.key});

  @override
  State<CheckBoxx> createState() => _CheckBoxxState();
}

class _CheckBoxxState extends State<CheckBoxx> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Check Box'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: const Text('CheckBox'),
                subtitle: const Text('test'),
                value: isChecked,
                onChanged: ((value) {
                  setState(() {
                    isChecked = value!;
                  });
                }),
                activeColor: Colors.green,
                checkColor: Colors.red,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () => Navigator.of(context).popAndPushNamed('1'),
                    icon: Icon(
                      Icons.keyboard_arrow_left,
                      size: 60,
                    )),
                SizedBox(
                  width: 20,
                ),
                IconButton(
                    onPressed: () => Navigator.of(context).pushNamed('3'),
                    icon: Icon(
                      Icons.keyboard_arrow_right,
                      size: 60,
                    )),
              ],
            )
          ],
        ));
  }
}
