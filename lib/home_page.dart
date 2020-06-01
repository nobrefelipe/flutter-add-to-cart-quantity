import 'package:flutter/material.dart';

import 'add-to-cart-widget/add_to_cart_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: AddToCart(),
    );
  }
}
