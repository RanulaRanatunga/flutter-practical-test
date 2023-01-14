import 'package:flutter/material.dart';
import 'package:practical_test/models/hotel_model.dart';
import 'package:practical_test/widgets/hotel_item_widget.dart';

class FindView extends StatefulWidget {


  const FindView({Key? key}) : super(key: key);

  @override
  State<FindView> createState() => _FindViewState();
}

class _FindViewState extends State<FindView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: (){},
          icon:const Icon(Icons.arrow_back,color: Colors.black,),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView.builder(
          itemCount: HotelModel.items.length,
            itemBuilder: (context, index) {
              return  HotelItemWidget(
                hotelItem: HotelModel.items[index],
              );
            }),
      ),
    );
  }
}
