import 'package:dashdoor/components/my_drawer.dart';
import 'package:dashdoor/pages/my_current_location.dart';
import 'package:dashdoor/pages/my_sliver_app_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Theme.of(context).colorScheme.background,
      drawer: MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySliverAppBar(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Divider(
                    indent: 25,
                    endIndent: 25,
                    color: Theme.of(context).colorScheme.secondary,
                  ),

                  //location
                  MyCurrentLocation(),
                  //description box
                ],
              ),
              title: Text("title"))
        ],
        body: Container(
          color: Colors.amber.shade600,
        ),
      ),
    );
  }
}
