import 'package:flutter/material.dart';
import 'package:travel_app/core/constants/dimension_constants.dart';
import 'package:travel_app/core/helpers/asset_helper.dart';
import 'package:travel_app/representation/widget/app_bar_container.dart';
import 'package:travel_app/representation/widget/button_widget.dart';
import 'package:travel_app/representation/widget/item_booking_widget.dart';

class HotelBookingScreen extends StatefulWidget {
  const HotelBookingScreen({super.key});

  static const String routeName = '/hotel_booking_screen';

  @override
  State<HotelBookingScreen> createState() => _HotelBookingScreenState();
}

class _HotelBookingScreenState extends State<HotelBookingScreen> {
  @override
  Widget build(BuildContext context) {
    return AppBarContainer(
      titleString: 'Hotel booking',
      implementLeading: true,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: kMediumPadding * 2),
            ItemBookingWidget(
              icon: AssetHelper.icoLocation,
              title: 'Destination',
              description: 'Korea',
              onTap: () {},
            ),
            const SizedBox(height: kMediumPadding),
            ItemBookingWidget(
              icon: AssetHelper.icoCalendal,
              title: 'Select date',
              description: '13 Feb - 18 Feb 2021',
              onTap: () {},
            ),
            const SizedBox(height: kMediumPadding),
            ItemBookingWidget(
              icon: AssetHelper.icoBed,
              title: 'Guest and Room',
              description: '2 Guest, 1 Room',
              onTap: () {},
            ),
            const SizedBox(height: kMediumPadding),
            ButtonWidget(
              title: 'Search',
              tap: () {},
            )
          ],
        ),
      ),
    );
  }
}
