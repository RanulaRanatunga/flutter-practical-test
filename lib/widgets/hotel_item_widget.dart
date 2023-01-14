import 'package:flutter/material.dart';
import 'package:practical_test/models/hotel_model.dart';

class HotelItemWidget extends StatelessWidget {

  final HotelItem hotelItem;

  const HotelItemWidget({Key? key, required this.hotelItem}) : assert(hotelItem != null) ,  super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      child: ListTile(
        leading: Expanded(
          flex: 1,
          child: Image.network(
              hotelItem.image,
              fit: BoxFit.fill,
            ),
        ),
        title: Expanded(
          flex: 1,
          child: Text(hotelItem.priceDescription,
          style: const TextStyle(
            fontSize: 13
          ),),
        ),
      ),
    );
  }
}
