import 'package:flutter/material.dart';
import 'package:responsive_test/Components/my_box.dart';
import 'package:responsive_test/Components/my_tile.dart';
import 'package:responsive_test/Components/constants.dart';

class DeskstopScaffold extends StatelessWidget {
  const DeskstopScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyBackground,
      body: Row(
        children: [
          MyDrawer,
          Expanded(
            flex: 2,
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 4,
                  child: SizedBox(
                    width: double.infinity,
                    child: GridView.builder(
                        itemCount: 4,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 4),
                        itemBuilder: (context, key) {
                          return const MyBox();
                        }),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, key) {
                      return const MyTile();
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.grey[400],
                  ),
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
