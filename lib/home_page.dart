import 'package:flutter/material.dart';

import 'add-to-cart-widget/add_to_cart_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    /*
     * Includes the AddToCart Widget
     * use Theme widget so we can set the canvasColor to trasnparent
     * this allow us to have rounded borders on the top of the Bottom Sheet
     * we could set it on the global app theme
     * but this way we only change the canvas color of the widget and not the entire app
     * 
     */
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: AddToCart(),
    );
  }
}
