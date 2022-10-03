import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'tourism_place.dart';
import 'halaman_detail.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreenAccent,
          title: Center(child: const Text("Menu Aplikasi")),
        ),
        body: ListView.builder(
            itemBuilder: (context,index){
              final TourismPlace place = tourismPlaceList[index];
              return InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                  return HalamanDetail(place: place);
                  }));
                },
                child: Container(
                  padding: const EdgeInsets.fromLTRB(50, 15, 50, 50),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.green,
                    ),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 40,),
                Image.network(place.imageUrls[0],width: MediaQuery.of(context).size.width,),
              SizedBox(height: 15,),
              Text(place.name,
                  style: TextStyle(
              fontWeight: FontWeight.bold
              ),),
              SizedBox(height: 10,),
              Text(place.ticketPrice,
                style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              ),
              SizedBox(height: 20,)
              ],
              ),
                ),
              ),
              );
            },
            itemCount: tourismPlaceList.length,
        )
    );
    }
  }
