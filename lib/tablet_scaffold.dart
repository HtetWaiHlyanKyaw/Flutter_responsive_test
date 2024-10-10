import 'package:flutter/material.dart';
import 'package:responsive_test/Components/constants.dart';
import 'package:responsive_test/Components/my_box.dart';
import 'package:responsive_test/Components/my_tile.dart';

class TabletScaffold extends StatelessWidget {
  const TabletScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyBackground,
      appBar: MyAppBar,
      drawer: MyDrawer,
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 4,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
                  }))
        ],
      ),
    );
  }
}
