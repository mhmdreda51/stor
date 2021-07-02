import 'package:ecommerceapp/widgets/feeds_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Feeds extends StatelessWidget {
  static const routeName = '/Feeds';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StaggeredGridView.countBuilder(
      // padding: EdgeInsets.all(8),
      crossAxisCount: 6,
      itemCount: 8,
      itemBuilder: (BuildContext context, int index) => FeedsProducts(),
      staggeredTileBuilder: (int index) =>
          new StaggeredTile.count(3, index.isEven ? 4 : 4.3),
      mainAxisSpacing: 6.0,
      crossAxisSpacing: 8.0,
    ));
  }
}
