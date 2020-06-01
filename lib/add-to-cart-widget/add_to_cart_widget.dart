import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'modal_bottom_sheet_content.dart';

/*
 * ADD TO CART BUTTON WIDGET
 * this widget contains a button that will trigger a function 
 * to open a Modal Botton Sheet Widget
 */
class AddToCart extends StatelessWidget {
  /*
   * Show Modal Bottom Sheet
   * Function that will show the modal bottom sheet
   * when user clicks on the button 
   */
  _showModalBottomSheet(context) {
    return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 350,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          /*  
           * Modal Botton Sheet Content
           * this widget contains all the contents for the input counter 
           * and add to cart button
           */
          child: ModalBottomSheetContent(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    /*
     * OPEN BOTTOM SHEET BUTTON
     */
    return FlatButton(
      onPressed: () => _showModalBottomSheet(context),
      child: Container(
        height: 55,
        width: double.infinity,
        alignment: Alignment(0, 0),
        decoration: BoxDecoration(
          color: Color(0xff00BD6D),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          "OPEN BOTTOM SHEET",
          style: GoogleFonts.comfortaa(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
          ),
        ),
      ),
    );
  }
}
