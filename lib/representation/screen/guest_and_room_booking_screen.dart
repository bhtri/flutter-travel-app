import 'package:flutter/material.dart';
import 'package:travel_app/core/constants/dimension_constants.dart';
import 'package:travel_app/core/helpers/asset_helper.dart';
import 'package:travel_app/representation/widget/app_bar_container.dart';
import 'package:travel_app/representation/widget/button_widget.dart';
import 'package:travel_app/representation/widget/item_add_guest_and_room.dart';

class GuestAndRoomBookingScreen extends StatefulWidget {
  const GuestAndRoomBookingScreen({super.key});

  static const String routeName = '/guest_and_room_screen';

  @override
  State<GuestAndRoomBookingScreen> createState() => _GuestAndRoomBookingScreenState();
}

class _GuestAndRoomBookingScreenState extends State<GuestAndRoomBookingScreen> {
  @override
  Widget build(BuildContext context) {
    return AppBarContainer(
      titleString: 'Add Guest and Room',
      child: Column(
        children: [
          const SizedBox(height: kMediumPadding * 1.5),
          const ItemAddGuestAndRoom(
            title: 'Guest',
            icon: AssetHelper.icoGuest,
            inniData: 2,
          ),
          const ItemAddGuestAndRoom(
            title: 'Room',
            icon: AssetHelper.icoRoom,
            inniData: 1,
          ),
          ButtonWidget(
            title: 'Select',
            tap: () {
              Navigator.of(context).pop();
            },
          ),
          const SizedBox(height: kDefaultPadding),
          ButtonWidget(
            title: 'Cancel',
            tap: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
