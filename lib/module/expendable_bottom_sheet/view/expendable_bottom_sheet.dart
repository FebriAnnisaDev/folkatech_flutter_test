import 'package:expandable_bottom_bar_new/expandable_bottom_bar.dart';
import 'package:flutter/material.dart';
import '../../../shared/util/const.dart';
import '../widget/features_item.dart';

class ExpendableBottomSheet extends StatelessWidget {
  const ExpendableBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomExpandableAppBar(
      expandedHeight: 400,
      horizontalMargin: 16,
      shape: const AutomaticNotchedShape(
          RoundedRectangleBorder(), StadiumBorder(side: BorderSide())),
      expandedBackColor: greyColor,
      expandedBody: const Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FeaturesItem(
                icon: Icons.payment,
                title: 'Payment',
              ),
              FeaturesItem(
                icon: Icons.card_giftcard_sharp,
                title: 'Gift',
              ),
              FeaturesItem(
                icon: Icons.help_center_outlined,
                title: 'Help',
              ),
              FeaturesItem(
                icon: Icons.settings_outlined,
                title: 'Settings',
              ),
            ],
          ),
        ),
      ),
      bottomAppBarBody: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(
              child: Icon(
                Icons.home,
                size: 24.0,
              ),
            ),
            Spacer(
              flex: 2,
            ),
            Expanded(
              child: Icon(
                Icons.delivery_dining,
                size: 24.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
