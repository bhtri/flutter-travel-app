import 'package:flutter/material.dart';
import 'package:travel_app/core/constants/dimension_constants.dart';
import 'package:travel_app/core/helpers/asset_helper.dart';

class ItemBookingWidget extends StatelessWidget {
  const ItemBookingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kDefaultPadding),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(kItemPadding)),
      ),
      child: Row(
        children: [
          Image.asset(AssetHelper.icoLocation),
          const SizedBox(width: kItemPadding),
          Column(
            children: const [
              Text(
                'data',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: kItemPadding),
              Text('data'),
            ],
          ),
        ],
      ),
    );
  }
}
