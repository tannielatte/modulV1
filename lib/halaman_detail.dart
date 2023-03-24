import 'package:flutter/material.dart';
import 'package:modulv1/tourism_place.dart';

class HalamanDetail extends StatelessWidget {
  final TourismPlace place;
  const HalamanDetail({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(place.name),
      ),
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 2/5,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Image.network(place.imageUrls[0]),
                Image.network(place.imageUrls[1]),
                Image.network(place.imageUrls[2]),
              ],
            ),
          ),
          Text('Harga Tiket: ' + place.ticketPrice ),
          Text('Lokasi' + place.location),
          Text('Open Time ' + place.openTime),
          Text('Open Days' + place.openDays),
          Text('Description' + place.description),
        ],
      ),

    );
  }
}
