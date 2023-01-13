import 'package:flutter/material.dart';
import 'package:travel_app/core/constants/dimension_constants.dart';
import 'package:travel_app/core/constants/textstyle_ext.dart';
import 'package:travel_app/core/helpers/asset_helper.dart';
import 'package:travel_app/core/helpers/image_helper.dart';
import 'package:travel_app/data/models/hotel_model.dart';
import 'package:travel_app/representation/widget/button_widget.dart';
import 'package:travel_app/representation/widget/dashline_widget.dart';

class ItemHotelWidget extends StatelessWidget {
  const ItemHotelWidget({
    super.key,
    required this.hotelModel,
  });

  final HotelModel hotelModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kDefaultPadding),
        color: Colors.white,
      ),
      margin: const EdgeInsets.only(bottom: kMediumPadding),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(right: kDefaultPadding),
            child: ImageHelper.loadFromAsset(
              hotelModel.hotelImage,
              radius: const BorderRadius.only(
                topLeft: Radius.circular(kDefaultPadding),
                bottomRight: Radius.circular(kDefaultPadding),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  hotelModel.hotelName,
                  style: TextStyles.defaultStyle.fontHeader.bold,
                ),
                const SizedBox(height: kDefaultPadding),
                Row(
                  children: [
                    ImageHelper.loadFromAsset(AssetHelper.icoLocationBlank),
                    const SizedBox(width: kMinPadding),
                    Text(hotelModel.location),
                    Text(
                      ' ~ ${hotelModel.awayKilometer} from destination',
                      style: TextStyles.defaultStyle.subTitleTextColor.fontCaption,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
                const SizedBox(height: kDefaultPadding),
                Row(
                  children: [
                    ImageHelper.loadFromAsset(AssetHelper.icoStar),
                    const SizedBox(width: kMinPadding),
                    Text(hotelModel.star.toString()),
                    Text(
                      ' ${hotelModel.numberOfReview} reviews',
                      style: TextStyles.defaultStyle.subTitleTextColor,
                    ),
                  ],
                ),
                const DashLineWidget(),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '\$${hotelModel.price}',
                            style: TextStyles.defaultStyle.fontHeader.bold,
                          ),
                          const SizedBox(height: kDefaultPadding),
                          Text(
                            '/night',
                            style: TextStyles.defaultStyle.fontCaption,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ButtonWidget(
                        title: 'Book a room',
                        tap: () {},
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
