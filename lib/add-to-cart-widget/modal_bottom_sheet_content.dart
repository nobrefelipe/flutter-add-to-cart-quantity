import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ModalBottomSheetContent extends StatefulWidget {
  @override
  _ModalBottomSheetContentState createState() =>
      _ModalBottomSheetContentState();
}

class _ModalBottomSheetContentState extends State<ModalBottomSheetContent> {
  final primaryColor = Color(0xff00BD6D);

  int quantity = 1;

  int itemPrice = 12;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        /*
         * SLIDING INDICATOR
         * indicates that the bottom sheet can be dragged down
         */
        Container(
          width: 80,
          height: 6,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.black26,
            borderRadius: BorderRadius.circular(5),
          ),
        ),

        /*
        * MODAL TITLE
        */
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 40.0),
          child: Text(
            "Amount",
            style: GoogleFonts.comfortaa(
              color: Colors.black54,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        /*
         * COUNTER
         * contains 3 widgets
         * 1. decrement
         * 2. quantity
         * 3. increment
         */
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[

            /*
             * Decrement Button
             * displays a button with a '-' symbol
             * that will decrement the quantity
             * 
             * It is a FlatButton wrapped in a ClipRRect
             * with a circular shape to make it circular
             * so the hover tap colors dont behaviour as a square button 
             * 
             * onPressed, use steState to decrement the quantity
             * only if it is bigger than one, 
             * we dont want it to be smaller or equalt to zero
             * 
             * ideally we would use a controller instead of setState
             * but for this demo it's ok
             */
            ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Container(
                width: 40,
                height: 40,
                alignment: Alignment(0, 0),
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      if (quantity > 1) quantity--;
                    });
                  },
                  splashColor: Colors.transparent,
                  highlightColor: primaryColor,
                  child: Text(
                    "-",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.comfortaa(
                      color: Colors.black54,
                      fontSize: 40,
                      fontWeight: FontWeight.w100,
                      height: 1,
                    ),
                  ),
                ),
              ),
            ),

            /*
             * Quatity counter
             * displays the quantity  
             */
            Container(
              width: 60,
              alignment: Alignment(0, 0),
              padding: EdgeInsets.only(right: 10),
              child: Text(
                "$quantity",
                style: GoogleFonts.comfortaa(
                  color: Colors.black54,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            /*
             * Increment Button
             * displays a button with a '+' symbol
             * that will increment the quantity
             * 
             * It is a FlatButton wrapped in a ClipRRect
             * with a circular shape to make it circular
             * so the hover tap colors dont behaviour as a square button 
             * 
             * onPressed, use steState to increment the quantity
             * 
             * ideally we would use a controller instead of setState
             * but for this demo it's ok
             */
            ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Container(
                width: 40,
                height: 40,
                alignment: Alignment(0, 0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black12,
                ),
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      quantity++;
                    });
                  },
                  splashColor: Colors.transparent,
                  highlightColor: primaryColor,
                  child: Text(
                    "+",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.comfortaa(
                      color: Colors.black54,
                      fontSize: 30,
                      fontWeight: FontWeight.w100,
                      height: 1.3,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),

        SizedBox(height: 60),

        /*
         * ADD TO CART BUTTON
         * this widget contains a Flat Button
         * with two Text Widgets for the content:
         * one with the label  'add to cart'
         * and one with the total to pay based on item price and amount selected
         */
        FlatButton(
          onPressed: () => Navigator.pop(context),

          /*
           * Conainer with the button background and rounded corners
           */
          child: Container(
            height: 55,
            width: double.infinity,
            alignment: Alignment(0, 0),
            decoration: BoxDecoration(
              color: Color(0xff00BD6D),
              borderRadius: BorderRadius.circular(10),
            ),

            /*
             *  Stack containing two Text Widgets
             */
            child: Stack(
              alignment: Alignment(0, 0),
              children: <Widget>[

                /*
                 * Add to cart Text Widget
                 */
                Positioned(
                  left: 130,
                  child: Text(
                    "ADD TO CART ",
                    style: GoogleFonts.comfortaa(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                    ),
                  ),
                ),

                /*
                 * Total amount to pay 
                 * calculated by mutiplying the item price by the quantity
                 */
                Positioned(
                  right: 30,
                  child: Container(
                    width: 55,
                    alignment: Alignment(0, 1),
                    child: Text(
                      "\$${itemPrice * quantity}",
                      style: GoogleFonts.comfortaa(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
