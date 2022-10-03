import 'package:flutter/material.dart';
import 'tourism_place.dart';


class HalamanDetail extends StatefulWidget {
  final TourismPlace place;

  const HalamanDetail({Key? key, required this.place}) : super(key: key);

  @override
  State<HalamanDetail> createState() => _HalamanDetailState();
}

class _HalamanDetailState extends State<HalamanDetail> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.place.name}"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(12),
              height: (MediaQuery
                  .of(context)
                  .size
                  .height) / 3,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Image.network(widget.place.imageUrls[index]),
                  );
                },
                itemCount: widget.place.imageUrls.length,
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    textBesar(widget.place.name),
                    SizedBox(height: 10,),
                    textSedang(widget.place.location),
                    SizedBox(height: 10,),
                    textSedang(widget.place.description),
                    SizedBox(height: 10,),
                    textSedang(widget.place.openDays),
                    SizedBox(height: 10,),
                    textSedang("Jam Operasional: " + widget.place.openTime),
                    SizedBox(height: 10,),
                    textSedang("Harga Tiket Masuk : " + widget.place.ticketPrice),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

Widget textBesar(String text) {
  return Text(
    text,
    style: TextStyle(fontSize: 20),
  );
}

Widget textSedang(String text) {
  return Text(
    text,
    style: TextStyle(fontSize: 16),
    textAlign: TextAlign.center,
  );
}


