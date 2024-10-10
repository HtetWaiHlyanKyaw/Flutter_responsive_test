import 'package:flutter/material.dart';
import 'package:responsive_test/Components/constants.dart';
import 'package:responsive_test/Components/my_box.dart';
import 'package:responsive_test/Components/my_tile.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({super.key});

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyBackground,
      appBar: MyAppBar,
      // ignore: prefer_const_constructors
      drawer: MyDrawer,
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
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
