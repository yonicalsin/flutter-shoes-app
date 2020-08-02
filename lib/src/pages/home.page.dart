import 'package:flutter/material.dart';
import 'package:shoes_app/src/widgets/custom-appbar.dart';
// import 'package:shoes_app/src/widgets/custom-appbar.dart';
import 'package:shoes_app/src/widgets/shoe-card.dart';

class PageHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: CustomAppbar(),
      body: Column(
        children: <Widget>[
          CustomAppbar(),
          SizedBox(
            height: 20,
          ),
          ShoeCard(),
        ],
      ),
    );
  }
}
