import 'package:flutter/material.dart';
import 'package:pantry/models/destination_model.dart';

class DestinationCarousel extends StatefulWidget {
  @override
  _DestinationCarouselState createState() => _DestinationCarouselState();
}

class _DestinationCarouselState extends State<DestinationCarousel> {

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
            Padding( padding:EdgeInsets.symmetric(horizontal:20),
            child:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                Text('Top Destinations', style: TextStyle(fontSize: 22)),
                GestureDetector(
                  onTap: () => print("see all"),
                  child: Text('See All', style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 16,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.0)),
                )
                ]
                )
            ),
            Container(height: 300, color:Colors.blue,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: destinations.length,
              itemBuilder: (BuildContext context, int index){
                return Text(destinations[index].city);
              },
            ),)
          ],
          );
  }
}