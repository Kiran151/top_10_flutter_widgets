import 'package:flutter/material.dart';

class Pageviews extends StatefulWidget {
  const Pageviews({super.key});

  @override
  State<Pageviews> createState() => _PageviewsState();
}

class _PageviewsState extends State<Pageviews> {
  final controller = PageController(initialPage: 0);
  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PageView'),
        actions: [
          IconButton(
            onPressed: () {
              controller.previousPage(
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeInOut);
            },
            icon: const Icon(Icons.keyboard_arrow_left),
          ),
          IconButton(
            onPressed: () {
              controller.nextPage(
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeInOut);
            },
            icon: const Icon(Icons.keyboard_arrow_right),
          ),
        ],
      ),
      body: PageView(
        // scrollDirection: Axis.vertical,
        onPageChanged: (index) {
          print('page:$index');
        },
        physics: const NeverScrollableScrollPhysics(),
        controller: controller,
        children: [
          Container(
            color: Colors.blue,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Center(
                  child: Text('page1'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () =>
                            Navigator.of(context).popAndPushNamed('6'),
                        icon: Icon(
                          Icons.keyboard_arrow_left,
                          size: 60,
                        )),
                    SizedBox(
                      width: 20,
                    ),
                    IconButton(
                        onPressed: () => Navigator.of(context).pushNamed('8'),
                        icon: Icon(
                          Icons.keyboard_arrow_right,
                          size: 60,
                        )),
                  ],
                )
              ],
            ),
          ),
          Container(
            color: Colors.red,
            child: const Center(
              child: Text('page2'),
            ),
          ),
          Container(
            color: Colors.green,
            child: const Center(
              child: Text('page3'),
            ),
          ),
        ],
      ),
    );
  }
}
