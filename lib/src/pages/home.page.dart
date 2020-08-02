import 'package:flutter/material.dart';
import 'package:shoes_app/src/widgets/custom-appbar.dart';
import 'package:shoes_app/src/widgets/shoe-card.dart';
import 'package:shoes_app/src/widgets/shoe-description.dart';

class PageHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: CustomAppbar(),
      body: Column(
        children: <Widget>[
          CustomAppbar(),
          SizedBox(height: 20),
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: <Widget>[
                  ShoeCard(),
                  ShoeDescription(
                    title: 'Nike Air Max 720',
                    descriptipn:
                        "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
