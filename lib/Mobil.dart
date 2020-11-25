import 'package:flutter/material.dart';
import 'package:indocars/Detail_Mobil.dart';
import 'Detail_Mobil.dart';
import 'Spek_Mobil.dart';

class MobilTs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: allCars.cars.length,
      itemBuilder: (ctx, i) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (ctx) => DetailMobil(
                  title: allCars.cars[i].title,
                  brand: allCars.cars[i].brand,
                  fuel: allCars.cars[i].fuel,
                  price: allCars.cars[i].price,
                  path: allCars.cars[i].path,
                  gearbox: allCars.cars[i].gearbox,
                  color: allCars.cars[i].color,
                ),
            ),
            );
          },
          child: Container(
              margin: EdgeInsets.only(
                  top: i.isEven ? 0 : 10, bottom: i.isEven ? 10 : 0),
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black26, blurRadius: 5, spreadRadius: 1)
                  ]),
              child: Column(
                children: [
                  Hero(
                      tag: allCars.cars[i].title,
                      child: Image.asset(allCars.cars[i].path)),
                  Text(
                    allCars.cars[i].title,
                    style: TextStyle(fontSize: 15,
                    ),
                  ),
                  Text((allCars.cars[i].price).toString(),
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text('per month')
                ],
              )),
        ),
      ),
      gridDelegate:
      SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    );
  }
}