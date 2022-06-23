import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';
import 'package:shamo/widgets/cart_card.dart';

class CartPage extends StatelessWidget {
  // const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget emptyCart() {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icon_empty_cart.png',
              width: 80,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Opss! Your Cart is Empty',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'Let\'s find your favorite shoes',
              style: secondaryTextStyle,
            ),
            Container(
              width: 154,
              height: 44,
              margin: EdgeInsets.only(
                top: 20,
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/home', (route) => false);
                },
                style: TextButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  'Explore Store',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget content() {
      return ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          children: [CartCard()]
          // cartProvider.carts
          //     .map(
          //       (cart) => CartCard(cart),
          //     )
          //     .toList(),
          );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: AppBar(
        backgroundColor: backgroundColor1,
        centerTitle: true,
        title: Text(
          'Your Cart',
        ),
        elevation: 0,
      ),
      // body: cartProvider.carts.length == 0 ? emptyCart() : content(),
      body: content(),
      // bottomNavigationBar:
      //     cartProvider.carts.length == 0 ? SizedBox() : customBottomNav(),
    );
  }
}
